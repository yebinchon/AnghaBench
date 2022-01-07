
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int bfd_big_endian (int *) ;
 int bfd_get_arch (int *) ;
 int bfd_get_mach (int *) ;
 int * bfd_openr (int *,int *) ;
 int disassembler (int ,int ,int ,int *) ;

int main(void)
{
 bfd *abfd = bfd_openr(((void*)0), ((void*)0));

 disassembler(bfd_get_arch(abfd),
       bfd_big_endian(abfd),
       bfd_get_mach(abfd),
       abfd);

 return 0;
}
