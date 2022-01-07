
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dup_mmap_sem ;
 int percpu_up_read (int *) ;

void uprobe_end_dup_mmap(void)
{
 percpu_up_read(&dup_mmap_sem);
}
