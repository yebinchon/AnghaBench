
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct comm {int dummy; } ;


 char const* comm__str (struct comm const*) ;
 struct comm* thread__comm (struct thread const*) ;

__attribute__((used)) static const char *__thread__comm_str(const struct thread *thread)
{
 const struct comm *comm = thread__comm(thread);

 if (!comm)
  return ((void*)0);

 return comm__str(comm);
}
