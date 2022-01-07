
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe {int dummy; } ;


 int arm_spe_dump (struct arm_spe*,unsigned char*,size_t) ;
 int printf (char*) ;

__attribute__((used)) static void arm_spe_dump_event(struct arm_spe *spe, unsigned char *buf,
          size_t len)
{
 printf(".\n");
 arm_spe_dump(spe, buf, len);
}
