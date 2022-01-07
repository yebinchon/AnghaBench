
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct user_arg_ptr {int dummy; } ;
struct linux_binprm {char* filename; char* interp; scalar_t__ mm; struct filename* file; int argc; int envc; int p; int exec; int interp_flags; } ;
struct files_struct {int dummy; } ;
struct filename {char* name; } ;
struct file {char* name; } ;
struct TYPE_11__ {int processes; } ;
struct TYPE_10__ {int flags; int in_execve; TYPE_2__* fs; TYPE_1__* files; } ;
struct TYPE_9__ {scalar_t__ in_exec; } ;
struct TYPE_8__ {int fdt; } ;


 int AT_FDCWD ;
 int BINPRM_FLAGS_PATH_INACCESSIBLE ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct filename*) ;
 int PF_NPROC_EXCEEDED ;
 int PTR_ERR (struct filename*) ;
 int RLIMIT_NPROC ;
 int acct_arg_size (struct linux_binprm*,int ) ;
 int acct_update_integrals (TYPE_3__*) ;
 scalar_t__ atomic_read (int *) ;
 int bprm_mm_init (struct linux_binprm*) ;
 int check_unsafe_exec (struct linux_binprm*) ;
 scalar_t__ close_on_exec (int,int ) ;
 int copy_strings (int ,struct user_arg_ptr,struct linux_binprm*) ;
 int copy_strings_kernel (int,char**,struct linux_binprm*) ;
 TYPE_3__* current ;
 TYPE_5__* current_user () ;
 struct filename* do_open_execat (int,struct filename*,int) ;
 int exec_binprm (struct linux_binprm*) ;
 int free_bprm (struct linux_binprm*) ;
 char* kasprintf (int ,char*,int,...) ;
 int kfree (char*) ;
 struct linux_binprm* kzalloc (int,int ) ;
 int mmput (scalar_t__) ;
 int prepare_arg_pages (struct linux_binprm*,struct user_arg_ptr,struct user_arg_ptr) ;
 int prepare_binprm (struct linux_binprm*) ;
 int prepare_bprm_creds (struct linux_binprm*) ;
 int put_files_struct (struct files_struct*) ;
 int putname (struct filename*) ;
 int rcu_dereference_raw (int ) ;
 int reset_files_struct (struct files_struct*) ;
 scalar_t__ rlimit (int ) ;
 int rseq_execve (TYPE_3__*) ;
 int sched_exec () ;
 int task_numa_free (TYPE_3__*,int) ;
 int unshare_files (struct files_struct**) ;
 int would_dump (struct linux_binprm*,struct filename*) ;

__attribute__((used)) static int __do_execve_file(int fd, struct filename *filename,
       struct user_arg_ptr argv,
       struct user_arg_ptr envp,
       int flags, struct file *file)
{
 char *pathbuf = ((void*)0);
 struct linux_binprm *bprm;
 struct files_struct *displaced;
 int retval;

 if (IS_ERR(filename))
  return PTR_ERR(filename);







 if ((current->flags & PF_NPROC_EXCEEDED) &&
     atomic_read(&current_user()->processes) > rlimit(RLIMIT_NPROC)) {
  retval = -EAGAIN;
  goto out_ret;
 }



 current->flags &= ~PF_NPROC_EXCEEDED;

 retval = unshare_files(&displaced);
 if (retval)
  goto out_ret;

 retval = -ENOMEM;
 bprm = kzalloc(sizeof(*bprm), GFP_KERNEL);
 if (!bprm)
  goto out_files;

 retval = prepare_bprm_creds(bprm);
 if (retval)
  goto out_free;

 check_unsafe_exec(bprm);
 current->in_execve = 1;

 if (!file)
  file = do_open_execat(fd, filename, flags);
 retval = PTR_ERR(file);
 if (IS_ERR(file))
  goto out_unmark;

 sched_exec();

 bprm->file = file;
 if (!filename) {
  bprm->filename = "none";
 } else if (fd == AT_FDCWD || filename->name[0] == '/') {
  bprm->filename = filename->name;
 } else {
  if (filename->name[0] == '\0')
   pathbuf = kasprintf(GFP_KERNEL, "/dev/fd/%d", fd);
  else
   pathbuf = kasprintf(GFP_KERNEL, "/dev/fd/%d/%s",
         fd, filename->name);
  if (!pathbuf) {
   retval = -ENOMEM;
   goto out_unmark;
  }





  if (close_on_exec(fd, rcu_dereference_raw(current->files->fdt)))
   bprm->interp_flags |= BINPRM_FLAGS_PATH_INACCESSIBLE;
  bprm->filename = pathbuf;
 }
 bprm->interp = bprm->filename;

 retval = bprm_mm_init(bprm);
 if (retval)
  goto out_unmark;

 retval = prepare_arg_pages(bprm, argv, envp);
 if (retval < 0)
  goto out;

 retval = prepare_binprm(bprm);
 if (retval < 0)
  goto out;

 retval = copy_strings_kernel(1, &bprm->filename, bprm);
 if (retval < 0)
  goto out;

 bprm->exec = bprm->p;
 retval = copy_strings(bprm->envc, envp, bprm);
 if (retval < 0)
  goto out;

 retval = copy_strings(bprm->argc, argv, bprm);
 if (retval < 0)
  goto out;

 would_dump(bprm, bprm->file);

 retval = exec_binprm(bprm);
 if (retval < 0)
  goto out;


 current->fs->in_exec = 0;
 current->in_execve = 0;
 rseq_execve(current);
 acct_update_integrals(current);
 task_numa_free(current, 0);
 free_bprm(bprm);
 kfree(pathbuf);
 if (filename)
  putname(filename);
 if (displaced)
  put_files_struct(displaced);
 return retval;

out:
 if (bprm->mm) {
  acct_arg_size(bprm, 0);
  mmput(bprm->mm);
 }

out_unmark:
 current->fs->in_exec = 0;
 current->in_execve = 0;

out_free:
 free_bprm(bprm);
 kfree(pathbuf);

out_files:
 if (displaced)
  reset_files_struct(displaced);
out_ret:
 if (filename)
  putname(filename);
 return retval;
}
