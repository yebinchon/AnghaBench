
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct linux_binprm {int interp_flags; int interp_data; int buf; struct file* file; int argc; int interp; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_3__ {int flags; int dentry; int interpreter; int interp_file; } ;
typedef TYPE_1__ Node ;


 int BINPRM_BUF_SIZE ;
 int BINPRM_FLAGS_EXECFD ;
 int BINPRM_FLAGS_PATH_INACCESSIBLE ;
 int ENOENT ;
 int ENOEXEC ;
 scalar_t__ IS_ERR (struct file*) ;
 int MISC_FMT_CREDENTIALS ;
 int MISC_FMT_OPEN_BINARY ;
 int MISC_FMT_OPEN_FILE ;
 int MISC_FMT_PRESERVE_ARGV0 ;
 int PTR_ERR (struct file*) ;
 int allow_write_access (struct file*) ;
 int bprm_change_interp (int ,struct linux_binprm*) ;
 TYPE_1__* check_file (struct linux_binprm*) ;
 int copy_strings_kernel (int,int *,struct linux_binprm*) ;
 int deny_write_access (struct file*) ;
 int dget (int ) ;
 int dput (int ) ;
 int enabled ;
 int entries_lock ;
 int fd_install (int,struct file*) ;
 struct file* file_clone_open (int ) ;
 int fput (struct file*) ;
 int get_unused_fd_flags (int ) ;
 int kernel_read (struct file*,int ,int ,int *) ;
 int ksys_close (int) ;
 int memset (int ,int ,int ) ;
 struct file* open_exec (int ) ;
 int prepare_binprm (struct linux_binprm*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int remove_arg_zero (struct linux_binprm*) ;
 int search_binary_handler (struct linux_binprm*) ;
 int would_dump (struct linux_binprm*,struct file*) ;

__attribute__((used)) static int load_misc_binary(struct linux_binprm *bprm)
{
 Node *fmt;
 struct file *interp_file = ((void*)0);
 int retval;
 int fd_binary = -1;

 retval = -ENOEXEC;
 if (!enabled)
  return retval;


 read_lock(&entries_lock);
 fmt = check_file(bprm);
 if (fmt)
  dget(fmt->dentry);
 read_unlock(&entries_lock);
 if (!fmt)
  return retval;


 retval = -ENOENT;
 if (bprm->interp_flags & BINPRM_FLAGS_PATH_INACCESSIBLE)
  goto ret;

 if (!(fmt->flags & MISC_FMT_PRESERVE_ARGV0)) {
  retval = remove_arg_zero(bprm);
  if (retval)
   goto ret;
 }

 if (fmt->flags & MISC_FMT_OPEN_BINARY) {





  fd_binary = get_unused_fd_flags(0);
  if (fd_binary < 0) {
   retval = fd_binary;
   goto ret;
  }
  fd_install(fd_binary, bprm->file);



  would_dump(bprm, bprm->file);

  allow_write_access(bprm->file);
  bprm->file = ((void*)0);


  bprm->interp_flags |= BINPRM_FLAGS_EXECFD;
  bprm->interp_data = fd_binary;

 } else {
  allow_write_access(bprm->file);
  fput(bprm->file);
  bprm->file = ((void*)0);
 }

 retval = copy_strings_kernel(1, &bprm->interp, bprm);
 if (retval < 0)
  goto error;
 bprm->argc++;


 retval = copy_strings_kernel(1, &fmt->interpreter, bprm);
 if (retval < 0)
  goto error;
 bprm->argc++;


 retval = bprm_change_interp(fmt->interpreter, bprm);
 if (retval < 0)
  goto error;

 if (fmt->flags & MISC_FMT_OPEN_FILE) {
  interp_file = file_clone_open(fmt->interp_file);
  if (!IS_ERR(interp_file))
   deny_write_access(interp_file);
 } else {
  interp_file = open_exec(fmt->interpreter);
 }
 retval = PTR_ERR(interp_file);
 if (IS_ERR(interp_file))
  goto error;

 bprm->file = interp_file;
 if (fmt->flags & MISC_FMT_CREDENTIALS) {
  loff_t pos = 0;





  memset(bprm->buf, 0, BINPRM_BUF_SIZE);
  retval = kernel_read(bprm->file, bprm->buf, BINPRM_BUF_SIZE,
    &pos);
 } else
  retval = prepare_binprm(bprm);

 if (retval < 0)
  goto error;

 retval = search_binary_handler(bprm);
 if (retval < 0)
  goto error;

ret:
 dput(fmt->dentry);
 return retval;
error:
 if (fd_binary > 0)
  ksys_close(fd_binary);
 bprm->interp_flags = 0;
 bprm->interp_data = 0;
 goto ret;
}
