
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_size; } ;


 int close (int ) ;
 int ehdr_curr ;
 int fd_map ;
 int mmap_failed ;
 int munmap (int ,int ) ;
 TYPE_1__ sb ;

__attribute__((used)) static void
cleanup(void)
{
 if (!mmap_failed)
  munmap(ehdr_curr, sb.st_size);
 close(fd_map);
}
