
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;


 scalar_t__ PATH_MAX ;
 int R_OK ;
 size_t __symbol__join_symfs (char*,scalar_t__,char*) ;
 scalar_t__ access (char*,int ) ;
 char* calloc (int,scalar_t__) ;
 int free (char*) ;
 int nsinfo__mountns_enter (struct nsinfo*,struct nscookie*) ;
 int nsinfo__mountns_exit (struct nscookie*) ;
 char* realpath (char*,int *) ;
 int snprintf (char*,scalar_t__,char*,char const*,char const*) ;
 int zfree (char**) ;

__attribute__((used)) static char *build_id_cache__find_debug(const char *sbuild_id,
     struct nsinfo *nsi)
{
 char *realname = ((void*)0);
 char *debugfile;
 struct nscookie nsc;
 size_t len = 0;

 debugfile = calloc(1, PATH_MAX);
 if (!debugfile)
  goto out;

 len = __symbol__join_symfs(debugfile, PATH_MAX,
       "/usr/lib/debug/.build-id/");
 snprintf(debugfile + len, PATH_MAX - len, "%.2s/%s.debug", sbuild_id,
   sbuild_id + 2);

 nsinfo__mountns_enter(nsi, &nsc);
 realname = realpath(debugfile, ((void*)0));
 if (realname && access(realname, R_OK))
  zfree(&realname);
 nsinfo__mountns_exit(&nsc);
out:
 free(debugfile);
 return realname;
}
