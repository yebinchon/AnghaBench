
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;
typedef int build_id ;


 int BUILD_ID_SIZE ;
 int SBUILD_ID_SIZE ;
 int build_id__sprintf (int *,int,char*) ;
 int build_id_cache__add_s (char*,char const*,struct nsinfo*,int,int) ;
 int filename__read_build_id (char const*,int **,int) ;
 int nsinfo__mountns_enter (struct nsinfo*,struct nscookie*) ;
 int nsinfo__mountns_exit (struct nscookie*) ;
 int pr_debug (char*,char const*,...) ;

__attribute__((used)) static int build_id_cache__add_file(const char *filename, struct nsinfo *nsi)
{
 char sbuild_id[SBUILD_ID_SIZE];
 u8 build_id[BUILD_ID_SIZE];
 int err;
 struct nscookie nsc;

 nsinfo__mountns_enter(nsi, &nsc);
 err = filename__read_build_id(filename, &build_id, sizeof(build_id));
 nsinfo__mountns_exit(&nsc);
 if (err < 0) {
  pr_debug("Couldn't read a build-id in %s\n", filename);
  return -1;
 }

 build_id__sprintf(build_id, sizeof(build_id), sbuild_id);
 err = build_id_cache__add_s(sbuild_id, filename, nsi,
        0, 0);
 pr_debug("Adding %s %s: %s\n", sbuild_id, filename,
   err ? "FAIL" : "Ok");
 return err;
}
