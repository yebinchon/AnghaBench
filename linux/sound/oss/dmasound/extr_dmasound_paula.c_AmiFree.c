
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amiga_chip_free (void*) ;

__attribute__((used)) static void AmiFree(void *obj, unsigned int size)
{
 amiga_chip_free (obj);
}
