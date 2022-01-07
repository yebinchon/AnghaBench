
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt {int dummy; } ;


 int intel_pt_dump (struct intel_pt*,unsigned char*,size_t) ;
 int printf (char*) ;

__attribute__((used)) static void intel_pt_dump_event(struct intel_pt *pt, unsigned char *buf,
    size_t len)
{
 printf(".\n");
 intel_pt_dump(pt, buf, len);
}
