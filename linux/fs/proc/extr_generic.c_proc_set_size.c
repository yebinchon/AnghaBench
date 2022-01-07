
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int size; } ;
typedef int loff_t ;



void proc_set_size(struct proc_dir_entry *de, loff_t size)
{
 de->size = size;
}
