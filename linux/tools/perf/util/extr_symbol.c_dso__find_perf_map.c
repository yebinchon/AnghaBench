
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int need_setns; int nstgid; int tgid; } ;
struct nscookie {int dummy; } ;


 int R_OK ;
 int access (char*,int ) ;
 struct nsinfo* nsinfo__copy (struct nsinfo*) ;
 int nsinfo__mountns_enter (struct nsinfo*,struct nscookie*) ;
 int nsinfo__mountns_exit (struct nscookie*) ;
 int nsinfo__put (struct nsinfo*) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int dso__find_perf_map(char *filebuf, size_t bufsz,
         struct nsinfo **nsip)
{
 struct nscookie nsc;
 struct nsinfo *nsi;
 struct nsinfo *nnsi;
 int rc = -1;

 nsi = *nsip;

 if (nsi->need_setns) {
  snprintf(filebuf, bufsz, "/tmp/perf-%d.map", nsi->nstgid);
  nsinfo__mountns_enter(nsi, &nsc);
  rc = access(filebuf, R_OK);
  nsinfo__mountns_exit(&nsc);
  if (rc == 0)
   return rc;
 }

 nnsi = nsinfo__copy(nsi);
 if (nnsi) {
  nsinfo__put(nsi);

  nnsi->need_setns = 0;
  snprintf(filebuf, bufsz, "/tmp/perf-%d.map", nnsi->tgid);
  *nsip = nnsi;
  rc = 0;
 }

 return rc;
}
