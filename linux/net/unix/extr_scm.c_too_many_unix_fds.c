
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {scalar_t__ unix_inflight; } ;
struct task_struct {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RESOURCE ;
 int RLIMIT_NOFILE ;
 int capable (int ) ;
 struct user_struct* current_user () ;
 scalar_t__ task_rlimit (struct task_struct*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool too_many_unix_fds(struct task_struct *p)
{
 struct user_struct *user = current_user();

 if (unlikely(user->unix_inflight > task_rlimit(p, RLIMIT_NOFILE)))
  return !capable(CAP_SYS_RESOURCE) && !capable(CAP_SYS_ADMIN);
 return 0;
}
