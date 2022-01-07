
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 struct pid* get_pid (struct pid*) ;
 int put_pid (struct pid*) ;

__attribute__((used)) static inline void ipc_update_pid(struct pid **pos, struct pid *pid)
{
 struct pid *old = *pos;
 if (old != pid) {
  *pos = get_pid(pid);
  put_pid(old);
 }
}
