
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Files ;
typedef int Dwarf_Die ;


 char* dwarf_filesrc (int *,size_t,int *,int *) ;
 int dwarf_getsrcfiles (int *,int **,size_t*) ;
 scalar_t__ strtailcmp (char const*,char const*) ;

const char *cu_find_realpath(Dwarf_Die *cu_die, const char *fname)
{
 Dwarf_Files *files;
 size_t nfiles, i;
 const char *src = ((void*)0);
 int ret;

 if (!fname)
  return ((void*)0);

 ret = dwarf_getsrcfiles(cu_die, &files, &nfiles);
 if (ret != 0)
  return ((void*)0);

 for (i = 0; i < nfiles; i++) {
  src = dwarf_filesrc(files, i, ((void*)0), ((void*)0));
  if (strtailcmp(src, fname) == 0)
   break;
 }
 if (i == nfiles)
  return ((void*)0);
 return src;
}
