
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int __task_cred (struct task_struct const*) ;
 int cred_sid (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline u32 task_sid(const struct task_struct *task)
{
 u32 sid;

 rcu_read_lock();
 sid = cred_sid(__task_cred(task));
 rcu_read_unlock();
 return sid;
}
