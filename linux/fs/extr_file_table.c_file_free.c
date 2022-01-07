
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fu_rcuhead; } ;
struct file {int f_mode; TYPE_1__ f_u; } ;


 int FMODE_NOACCOUNT ;
 int call_rcu (int *,int ) ;
 int file_free_rcu ;
 int nr_files ;
 int percpu_counter_dec (int *) ;
 int security_file_free (struct file*) ;

__attribute__((used)) static inline void file_free(struct file *f)
{
 security_file_free(f);
 if (!(f->f_mode & FMODE_NOACCOUNT))
  percpu_counter_dec(&nr_files);
 call_rcu(&f->f_u.fu_rcuhead, file_free_rcu);
}
