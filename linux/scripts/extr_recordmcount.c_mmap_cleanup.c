
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_size; } ;


 int * file_map ;
 int free (int *) ;
 int mmap_failed ;
 int munmap (int *,int ) ;
 TYPE_1__ sb ;

__attribute__((used)) static void mmap_cleanup(void)
{
 if (!mmap_failed)
  munmap(file_map, sb.st_size);
 else
  free(file_map);
 file_map = ((void*)0);
}
