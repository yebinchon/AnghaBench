
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {int dummy; } ;


 int AK4113_REG_RCS1 ;
 int external_rate (unsigned char) ;
 unsigned char reg_read (struct ak4113*,int ) ;

int snd_ak4113_external_rate(struct ak4113 *ak4113)
{
 unsigned char rcs1;

 rcs1 = reg_read(ak4113, AK4113_REG_RCS1);
 return external_rate(rcs1);
}
