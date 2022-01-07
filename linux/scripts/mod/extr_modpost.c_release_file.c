
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int munmap (void*,unsigned long) ;

void release_file(void *file, unsigned long size)
{
 munmap(file, size);
}
