
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct flock64 {int l_whence; scalar_t__ l_start; int l_len; int l_type; } ;
struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; int * fl_lmops; int * fl_ops; int fl_flags; struct file* fl_file; int fl_pid; int fl_owner; } ;
struct file {scalar_t__ f_pos; } ;
struct TYPE_2__ {int tgid; int files; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int FL_POSIX ;
 scalar_t__ OFFSET_MAX ;



 int assign_type (struct file_lock*,int ) ;
 TYPE_1__* current ;
 int file_inode (struct file*) ;
 scalar_t__ i_size_read (int ) ;

__attribute__((used)) static int flock64_to_posix_lock(struct file *filp, struct file_lock *fl,
     struct flock64 *l)
{
 switch (l->l_whence) {
 case 128:
  fl->fl_start = 0;
  break;
 case 130:
  fl->fl_start = filp->f_pos;
  break;
 case 129:
  fl->fl_start = i_size_read(file_inode(filp));
  break;
 default:
  return -EINVAL;
 }
 if (l->l_start > OFFSET_MAX - fl->fl_start)
  return -EOVERFLOW;
 fl->fl_start += l->l_start;
 if (fl->fl_start < 0)
  return -EINVAL;



 if (l->l_len > 0) {
  if (l->l_len - 1 > OFFSET_MAX - fl->fl_start)
   return -EOVERFLOW;
  fl->fl_end = fl->fl_start + l->l_len - 1;

 } else if (l->l_len < 0) {
  if (fl->fl_start + l->l_len < 0)
   return -EINVAL;
  fl->fl_end = fl->fl_start - 1;
  fl->fl_start += l->l_len;
 } else
  fl->fl_end = OFFSET_MAX;

 fl->fl_owner = current->files;
 fl->fl_pid = current->tgid;
 fl->fl_file = filp;
 fl->fl_flags = FL_POSIX;
 fl->fl_ops = ((void*)0);
 fl->fl_lmops = ((void*)0);

 return assign_type(fl, l->l_type);
}
