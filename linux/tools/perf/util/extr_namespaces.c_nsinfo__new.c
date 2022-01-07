
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int need_setns; int refcnt; scalar_t__ nstgid; scalar_t__ tgid; scalar_t__ pid; } ;
typedef scalar_t__ pid_t ;


 struct nsinfo* calloc (int,int) ;
 int nsinfo__init (struct nsinfo*) ;
 int refcount_set (int *,int) ;

struct nsinfo *nsinfo__new(pid_t pid)
{
 struct nsinfo *nsi;

 if (pid == 0)
  return ((void*)0);

 nsi = calloc(1, sizeof(*nsi));
 if (nsi != ((void*)0)) {
  nsi->pid = pid;
  nsi->tgid = pid;
  nsi->nstgid = pid;
  nsi->need_setns = 0;




  if (nsinfo__init(nsi) == -1)
   nsi->need_setns = 0;

  refcount_set(&nsi->refcnt, 1);
 }

 return nsi;
}
