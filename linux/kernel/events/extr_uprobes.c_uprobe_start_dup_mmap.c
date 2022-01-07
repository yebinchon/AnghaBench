
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dup_mmap_sem ;
 int percpu_down_read (int *) ;

void uprobe_start_dup_mmap(void)
{
 percpu_down_read(&dup_mmap_sem);
}
