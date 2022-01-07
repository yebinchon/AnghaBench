
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SPDIFIN_CTRL2 ;
 int SPDIFIN_THRES_PER_REG ;
 int SPDIFIN_THRES_WIDTH ;
 int axg_spdifin_write_mode_param (struct regmap*,int,unsigned int,int ,int ,int ) ;

__attribute__((used)) static void axg_spdifin_write_threshold(struct regmap *map, int mode,
     unsigned int val)
{
 axg_spdifin_write_mode_param(map, mode, val, SPDIFIN_THRES_PER_REG,
         SPDIFIN_CTRL2, SPDIFIN_THRES_WIDTH);
}
