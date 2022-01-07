
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int to ;
typedef int from ;


 int PATH_MAX ;
 int kallsyms__get_function_start (char*,char const*,scalar_t__*) ;
 char** ref_reloc_sym_names ;
 int scnprintf (char*,int,char*,char const*) ;

__attribute__((used)) static bool same_kallsyms_reloc(const char *from_dir, char *to_dir)
{
 char from[PATH_MAX];
 char to[PATH_MAX];
 const char *name;
 u64 addr1 = 0, addr2 = 0;
 int i, err = -1;

 scnprintf(from, sizeof(from), "%s/kallsyms", from_dir);
 scnprintf(to, sizeof(to), "%s/kallsyms", to_dir);

 for (i = 0; (name = ref_reloc_sym_names[i]) != ((void*)0); i++) {
  err = kallsyms__get_function_start(from, name, &addr1);
  if (!err)
   break;
 }

 if (err)
  return 0;

 if (kallsyms__get_function_start(to, name, &addr2))
  return 0;

 return addr1 == addr2;
}
