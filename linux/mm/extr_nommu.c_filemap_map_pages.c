
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_fault {int dummy; } ;
typedef int pgoff_t ;


 int BUG () ;

void filemap_map_pages(struct vm_fault *vmf,
  pgoff_t start_pgoff, pgoff_t end_pgoff)
{
 BUG();
}
