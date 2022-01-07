
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread {int dummy; } ;


 int __thread__set_comm (struct thread*,char const*,int ,int) ;

__attribute__((used)) static inline int thread__set_comm(struct thread *thread, const char *comm,
       u64 timestamp)
{
 return __thread__set_comm(thread, comm, timestamp, 0);
}
