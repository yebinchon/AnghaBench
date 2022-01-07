
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct comm_str {int dummy; } ;
struct comm {int exec; int start; struct comm_str* comm_str; } ;


 int ENOMEM ;
 struct comm_str* comm_str__findnew (char const*,int *) ;
 int comm_str__put (struct comm_str*) ;
 int comm_str_root ;

int comm__override(struct comm *comm, const char *str, u64 timestamp, bool exec)
{
 struct comm_str *new, *old = comm->comm_str;

 new = comm_str__findnew(str, &comm_str_root);
 if (!new)
  return -ENOMEM;

 comm_str__put(old);
 comm->comm_str = new;
 comm->start = timestamp;
 if (exec)
  comm->exec = 1;

 return 0;
}
