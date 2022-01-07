
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;


 int nsinfo__mountns_enter (struct nsinfo*,struct nscookie*) ;
 int nsinfo__mountns_exit (struct nscookie*) ;
 char* realpath (char const*,int *) ;

char *nsinfo__realpath(const char *path, struct nsinfo *nsi)
{
 char *rpath;
 struct nscookie nsc;

 nsinfo__mountns_enter(nsi, &nsc);
 rpath = realpath(path, ((void*)0));
 nsinfo__mountns_exit(&nsc);

 return rpath;
}
