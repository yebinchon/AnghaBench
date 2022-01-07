
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct comm {int exec; int comm_str; int start; } ;


 int comm_str__findnew (char const*,int *) ;
 int comm_str_root ;
 int free (struct comm*) ;
 struct comm* zalloc (int) ;

struct comm *comm__new(const char *str, u64 timestamp, bool exec)
{
 struct comm *comm = zalloc(sizeof(*comm));

 if (!comm)
  return ((void*)0);

 comm->start = timestamp;
 comm->exec = exec;

 comm->comm_str = comm_str__findnew(str, &comm_str_root);
 if (!comm->comm_str) {
  free(comm);
  return ((void*)0);
 }

 return comm;
}
