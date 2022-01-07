
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfhdr {int dummy; } ;


 scalar_t__ elf_check_const_displacement (struct elfhdr*) ;
 int elf_check_fdpic (struct elfhdr*) ;

__attribute__((used)) static int is_constdisp(struct elfhdr *hdr)
{
 if (!elf_check_fdpic(hdr))
  return 1;
 if (elf_check_const_displacement(hdr))
  return 1;
 return 0;
}
