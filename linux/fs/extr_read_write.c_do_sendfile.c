
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fd {TYPE_2__* file; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_11__ {int f_mode; scalar_t__ f_pos; int f_flags; } ;
struct TYPE_10__ {int s_maxbytes; } ;


 int EBADF ;
 int EOVERFLOW ;
 int ESPIPE ;
 int FMODE_PREAD ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 size_t MAX_RW_COUNT ;
 int O_NONBLOCK ;
 int READ ;
 int SPLICE_F_NONBLOCK ;
 int WRITE ;
 int add_rchar (int ,int ) ;
 int add_wchar (int ,int ) ;
 int current ;
 int do_splice_direct (TYPE_2__*,scalar_t__*,TYPE_2__*,scalar_t__*,size_t,int) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int file_end_write (TYPE_2__*) ;
 struct inode* file_inode (TYPE_2__*) ;
 int file_start_write (TYPE_2__*) ;
 int fsnotify_access (TYPE_2__*) ;
 int fsnotify_modify (TYPE_2__*) ;
 int inc_syscr (int ) ;
 int inc_syscw (int ) ;
 scalar_t__ min (int ,int ) ;
 int rw_verify_area (int ,TYPE_2__*,scalar_t__*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t do_sendfile(int out_fd, int in_fd, loff_t *ppos,
        size_t count, loff_t max)
{
 struct fd in, out;
 struct inode *in_inode, *out_inode;
 loff_t pos;
 loff_t out_pos;
 ssize_t retval;
 int fl;




 retval = -EBADF;
 in = fdget(in_fd);
 if (!in.file)
  goto out;
 if (!(in.file->f_mode & FMODE_READ))
  goto fput_in;
 retval = -ESPIPE;
 if (!ppos) {
  pos = in.file->f_pos;
 } else {
  pos = *ppos;
  if (!(in.file->f_mode & FMODE_PREAD))
   goto fput_in;
 }
 retval = rw_verify_area(READ, in.file, &pos, count);
 if (retval < 0)
  goto fput_in;
 if (count > MAX_RW_COUNT)
  count = MAX_RW_COUNT;




 retval = -EBADF;
 out = fdget(out_fd);
 if (!out.file)
  goto fput_in;
 if (!(out.file->f_mode & FMODE_WRITE))
  goto fput_out;
 in_inode = file_inode(in.file);
 out_inode = file_inode(out.file);
 out_pos = out.file->f_pos;
 retval = rw_verify_area(WRITE, out.file, &out_pos, count);
 if (retval < 0)
  goto fput_out;

 if (!max)
  max = min(in_inode->i_sb->s_maxbytes, out_inode->i_sb->s_maxbytes);

 if (unlikely(pos + count > max)) {
  retval = -EOVERFLOW;
  if (pos >= max)
   goto fput_out;
  count = max - pos;
 }

 fl = 0;
 file_start_write(out.file);
 retval = do_splice_direct(in.file, &pos, out.file, &out_pos, count, fl);
 file_end_write(out.file);

 if (retval > 0) {
  add_rchar(current, retval);
  add_wchar(current, retval);
  fsnotify_access(in.file);
  fsnotify_modify(out.file);
  out.file->f_pos = out_pos;
  if (ppos)
   *ppos = pos;
  else
   in.file->f_pos = pos;
 }

 inc_syscr(current);
 inc_syscw(current);
 if (pos > max)
  retval = -EOVERFLOW;

fput_out:
 fdput(out);
fput_in:
 fdput(in);
out:
 return retval;
}
