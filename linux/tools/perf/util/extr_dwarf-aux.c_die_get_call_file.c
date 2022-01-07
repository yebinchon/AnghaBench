
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Files ;
typedef int Dwarf_Die ;


 int die_get_call_fileno (int *) ;
 int dwarf_diecu (int *,int *,int *,int *) ;
 char const* dwarf_filesrc (int *,int,int *,int *) ;
 scalar_t__ dwarf_getsrcfiles (int *,int **,int *) ;

const char *die_get_call_file(Dwarf_Die *in_die)
{
 Dwarf_Die cu_die;
 Dwarf_Files *files;
 int idx;

 idx = die_get_call_fileno(in_die);
 if (idx < 0 || !dwarf_diecu(in_die, &cu_die, ((void*)0), ((void*)0)) ||
     dwarf_getsrcfiles(&cu_die, &files, ((void*)0)) != 0)
  return ((void*)0);

 return dwarf_filesrc(files, idx, ((void*)0), ((void*)0));
}
