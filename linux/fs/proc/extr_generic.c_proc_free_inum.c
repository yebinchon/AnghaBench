
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PROC_DYNAMIC_FIRST ;
 int ida_simple_remove (int *,scalar_t__) ;
 int proc_inum_ida ;

void proc_free_inum(unsigned int inum)
{
 ida_simple_remove(&proc_inum_ida, inum - PROC_DYNAMIC_FIRST);
}
