
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* amiga_chip_alloc (long,char*) ;

__attribute__((used)) static void *AmiAlloc(unsigned int size, gfp_t flags)
{
 return amiga_chip_alloc((long)size, "dmasound [Paula]");
}
