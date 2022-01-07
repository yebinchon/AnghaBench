
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct file {int dummy; } ;
typedef size_t loff_t ;


 int EINTR ;
 scalar_t__ IS_ERR (struct file*) ;
 size_t OVL_COPY_UP_CHUNK_SIZE ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int O_WRONLY ;
 int PTR_ERR (struct file*) ;
 int SPLICE_F_MOVE ;
 int TASK_KILLABLE ;
 int WARN_ON (int) ;
 int current ;
 size_t do_clone_file_range (struct file*,int ,struct file*,int ,size_t,int ) ;
 long do_splice_direct (struct file*,size_t*,struct file*,size_t*,size_t,int ) ;
 int fput (struct file*) ;
 struct file* ovl_path_open (struct path*,int) ;
 scalar_t__ signal_pending_state (int ,int ) ;
 int vfs_fsync (struct file*,int ) ;

__attribute__((used)) static int ovl_copy_up_data(struct path *old, struct path *new, loff_t len)
{
 struct file *old_file;
 struct file *new_file;
 loff_t old_pos = 0;
 loff_t new_pos = 0;
 loff_t cloned;
 int error = 0;

 if (len == 0)
  return 0;

 old_file = ovl_path_open(old, O_LARGEFILE | O_RDONLY);
 if (IS_ERR(old_file))
  return PTR_ERR(old_file);

 new_file = ovl_path_open(new, O_LARGEFILE | O_WRONLY);
 if (IS_ERR(new_file)) {
  error = PTR_ERR(new_file);
  goto out_fput;
 }


 cloned = do_clone_file_range(old_file, 0, new_file, 0, len, 0);
 if (cloned == len)
  goto out;



 while (len) {
  size_t this_len = OVL_COPY_UP_CHUNK_SIZE;
  long bytes;

  if (len < this_len)
   this_len = len;

  if (signal_pending_state(TASK_KILLABLE, current)) {
   error = -EINTR;
   break;
  }

  bytes = do_splice_direct(old_file, &old_pos,
      new_file, &new_pos,
      this_len, SPLICE_F_MOVE);
  if (bytes <= 0) {
   error = bytes;
   break;
  }
  WARN_ON(old_pos != new_pos);

  len -= bytes;
 }
out:
 if (!error)
  error = vfs_fsync(new_file, 0);
 fput(new_file);
out_fput:
 fput(old_file);
 return error;
}
