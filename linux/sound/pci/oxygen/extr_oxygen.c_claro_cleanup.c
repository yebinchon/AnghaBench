
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int claro_disable_hp (struct oxygen*) ;

__attribute__((used)) static void claro_cleanup(struct oxygen *chip)
{
 claro_disable_hp(chip);
}
