
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_bts {int dummy; } ;


 int intel_bts_dump (struct intel_bts*,unsigned char*,size_t) ;
 int printf (char*) ;

__attribute__((used)) static void intel_bts_dump_event(struct intel_bts *bts, unsigned char *buf,
     size_t len)
{
 printf(".\n");
 intel_bts_dump(bts, buf, len);
}
