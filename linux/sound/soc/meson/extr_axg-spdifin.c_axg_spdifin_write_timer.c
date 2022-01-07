
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SPDIFIN_CTRL4 ;
 int SPDIFIN_TIMER_PER_REG ;
 int SPDIFIN_TIMER_WIDTH ;
 int axg_spdifin_write_mode_param (struct regmap*,int,unsigned int,int ,int ,int ) ;

__attribute__((used)) static void axg_spdifin_write_timer(struct regmap *map, int mode,
        unsigned int val)
{
 axg_spdifin_write_mode_param(map, mode, val, SPDIFIN_TIMER_PER_REG,
         SPDIFIN_CTRL4, SPDIFIN_TIMER_WIDTH);
}
