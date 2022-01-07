
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machines {int guests; int host; } ;


 int HOST_KERNEL_ID ;
 int RB_ROOT_CACHED ;
 int machine__init (int *,char*,int ) ;

void machines__init(struct machines *machines)
{
 machine__init(&machines->host, "", HOST_KERNEL_ID);
 machines->guests = RB_ROOT_CACHED;
}
