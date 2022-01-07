
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int dg_cleanup (struct oxygen*) ;

void dg_suspend(struct oxygen *chip)
{
 dg_cleanup(chip);
}
