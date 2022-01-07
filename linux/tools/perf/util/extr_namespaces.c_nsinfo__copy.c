
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int refcnt; scalar_t__ mntns_path; int need_setns; int nstgid; int tgid; int pid; } ;


 struct nsinfo* calloc (int,int) ;
 int free (struct nsinfo*) ;
 int refcount_set (int *,int) ;
 scalar_t__ strdup (scalar_t__) ;

struct nsinfo *nsinfo__copy(struct nsinfo *nsi)
{
 struct nsinfo *nnsi;

 if (nsi == ((void*)0))
  return ((void*)0);

 nnsi = calloc(1, sizeof(*nnsi));
 if (nnsi != ((void*)0)) {
  nnsi->pid = nsi->pid;
  nnsi->tgid = nsi->tgid;
  nnsi->nstgid = nsi->nstgid;
  nnsi->need_setns = nsi->need_setns;
  if (nsi->mntns_path) {
   nnsi->mntns_path = strdup(nsi->mntns_path);
   if (!nnsi->mntns_path) {
    free(nnsi);
    return ((void*)0);
   }
  }
  refcount_set(&nnsi->refcnt, 1);
 }

 return nnsi;
}
