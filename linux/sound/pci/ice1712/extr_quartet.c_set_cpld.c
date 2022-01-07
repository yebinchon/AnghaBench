
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {struct qtet_spec* spec; } ;
struct qtet_spec {unsigned int cpld; } ;


 int GPIO_CPLD_CSN ;
 int reg_write (struct snd_ice1712*,int ,unsigned int) ;

__attribute__((used)) static void set_cpld(struct snd_ice1712 *ice, unsigned int val)
{
 struct qtet_spec *spec = ice->spec;
 reg_write(ice, GPIO_CPLD_CSN, val);
 spec->cpld = val;
}
