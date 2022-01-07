
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caif_device_entry {int * pcpu_refcnt; } ;


 int this_cpu_inc (int ) ;

__attribute__((used)) static void caifd_hold(struct caif_device_entry *e)
{
 this_cpu_inc(*e->pcpu_refcnt);
}
