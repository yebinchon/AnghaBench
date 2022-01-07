
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_flags {int open_flag; int lookup_flags; int intent; int acc_mode; } ;
struct filename {char* name; } ;
struct file {int f_path; } ;
struct TYPE_2__ {int i_mode; } ;


 int AT_EMPTY_PATH ;
 int AT_SYMLINK_NOFOLLOW ;
 int EACCES ;
 int EINVAL ;
 struct file* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct file*) ;
 int LOOKUP_EMPTY ;
 int LOOKUP_FOLLOW ;
 int LOOKUP_OPEN ;
 int MAY_EXEC ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int S_ISREG (int ) ;
 int __FMODE_EXEC ;
 int deny_write_access (struct file*) ;
 struct file* do_filp_open (int,struct filename*,struct open_flags*) ;
 TYPE_1__* file_inode (struct file*) ;
 int fput (struct file*) ;
 int fsnotify_open (struct file*) ;
 scalar_t__ path_noexec (int *) ;

__attribute__((used)) static struct file *do_open_execat(int fd, struct filename *name, int flags)
{
 struct file *file;
 int err;
 struct open_flags open_exec_flags = {
  .open_flag = O_LARGEFILE | O_RDONLY | __FMODE_EXEC,
  .acc_mode = MAY_EXEC,
  .intent = LOOKUP_OPEN,
  .lookup_flags = LOOKUP_FOLLOW,
 };

 if ((flags & ~(AT_SYMLINK_NOFOLLOW | AT_EMPTY_PATH)) != 0)
  return ERR_PTR(-EINVAL);
 if (flags & AT_SYMLINK_NOFOLLOW)
  open_exec_flags.lookup_flags &= ~LOOKUP_FOLLOW;
 if (flags & AT_EMPTY_PATH)
  open_exec_flags.lookup_flags |= LOOKUP_EMPTY;

 file = do_filp_open(fd, name, &open_exec_flags);
 if (IS_ERR(file))
  goto out;

 err = -EACCES;
 if (!S_ISREG(file_inode(file)->i_mode))
  goto exit;

 if (path_noexec(&file->f_path))
  goto exit;

 err = deny_write_access(file);
 if (err)
  goto exit;

 if (name->name[0] != '\0')
  fsnotify_open(file);

out:
 return file;

exit:
 fput(file);
 return ERR_PTR(err);
}
