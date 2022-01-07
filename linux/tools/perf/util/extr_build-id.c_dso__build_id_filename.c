
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int build_id; int has_build_id; } ;


 int SBUILD_ID_SIZE ;
 int asnprintf (char**,size_t,char*,char*,...) ;
 int build_id__sprintf (int ,int,char*) ;
 int build_id_cache__basename (int,int,int) ;
 char* build_id_cache__linkname (char*,int *,int ) ;
 int dso__is_kallsyms (struct dso*) ;
 int dso__is_vdso (struct dso*) ;
 int free (char*) ;
 scalar_t__ is_regular_file (char*) ;

char *dso__build_id_filename(const struct dso *dso, char *bf, size_t size,
        bool is_debug)
{
 bool is_kallsyms = dso__is_kallsyms((struct dso *)dso);
 bool is_vdso = dso__is_vdso((struct dso *)dso);
 char sbuild_id[SBUILD_ID_SIZE];
 char *linkname;
 bool alloc = (bf == ((void*)0));
 int ret;

 if (!dso->has_build_id)
  return ((void*)0);

 build_id__sprintf(dso->build_id, sizeof(dso->build_id), sbuild_id);
 linkname = build_id_cache__linkname(sbuild_id, ((void*)0), 0);
 if (!linkname)
  return ((void*)0);


 if (is_regular_file(linkname))
  ret = asnprintf(&bf, size, "%s", linkname);
 else
  ret = asnprintf(&bf, size, "%s/%s", linkname,
    build_id_cache__basename(is_kallsyms, is_vdso,
        is_debug));
 if (ret < 0 || (!alloc && size < (unsigned int)ret))
  bf = ((void*)0);
 free(linkname);

 return bf;
}
