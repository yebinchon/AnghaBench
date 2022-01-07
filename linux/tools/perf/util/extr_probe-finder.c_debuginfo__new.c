
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int dummy; } ;
struct debuginfo {int dummy; } ;
typedef enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;


 int DSO_BINARY_TYPE__NOT_FOUND ;
 int PATH_MAX ;
 struct debuginfo* __debuginfo__new (char const*) ;
 int* distro_dwarf_types ;
 struct dso* dso__new (char const*) ;
 int dso__put (struct dso*) ;
 scalar_t__ dso__read_binary_type_filename (struct dso*,int,char*,char*,int) ;

struct debuginfo *debuginfo__new(const char *path)
{
 enum dso_binary_type *type;
 char buf[PATH_MAX], nil = '\0';
 struct dso *dso;
 struct debuginfo *dinfo = ((void*)0);


 dso = dso__new(path);
 if (!dso)
  goto out;

 for (type = distro_dwarf_types;
      !dinfo && *type != DSO_BINARY_TYPE__NOT_FOUND;
      type++) {
  if (dso__read_binary_type_filename(dso, *type, &nil,
         buf, PATH_MAX) < 0)
   continue;
  dinfo = __debuginfo__new(buf);
 }
 dso__put(dso);

out:

 return dinfo ? : __debuginfo__new(path);
}
