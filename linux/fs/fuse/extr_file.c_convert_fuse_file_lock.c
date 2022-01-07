
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_lock {int type; int pid; int end; int start; } ;
struct fuse_conn {int pid_ns; } ;
struct file_lock {int fl_type; int fl_pid; int fl_end; int fl_start; } ;


 int EIO ;



 int OFFSET_MAX ;
 int find_pid_ns (int ,int ) ;
 int init_pid_ns ;
 int pid_nr_ns (int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int convert_fuse_file_lock(struct fuse_conn *fc,
      const struct fuse_file_lock *ffl,
      struct file_lock *fl)
{
 switch (ffl->type) {
 case 129:
  break;

 case 130:
 case 128:
  if (ffl->start > OFFSET_MAX || ffl->end > OFFSET_MAX ||
      ffl->end < ffl->start)
   return -EIO;

  fl->fl_start = ffl->start;
  fl->fl_end = ffl->end;





  rcu_read_lock();
  fl->fl_pid = pid_nr_ns(find_pid_ns(ffl->pid, fc->pid_ns), &init_pid_ns);
  rcu_read_unlock();
  break;

 default:
  return -EIO;
 }
 fl->fl_type = ffl->type;
 return 0;
}
