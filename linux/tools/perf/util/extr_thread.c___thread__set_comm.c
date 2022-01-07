
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int comm_lock; } ;


 int ____thread__set_comm (struct thread*,char const*,int ,int) ;
 int down_write (int *) ;
 int up_write (int *) ;

int __thread__set_comm(struct thread *thread, const char *str, u64 timestamp,
         bool exec)
{
 int ret;

 down_write(&thread->comm_lock);
 ret = ____thread__set_comm(thread, str, timestamp, exec);
 up_write(&thread->comm_lock);
 return ret;
}
