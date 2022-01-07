
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regmap; } ;
struct sti_sas_data {TYPE_1__ dac; } ;


 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int sti_sas_write_reg(void *context, unsigned int reg,
        unsigned int value)
{
 struct sti_sas_data *drvdata = context;
 int status;

 status = regmap_write(drvdata->dac.regmap, reg, value);

 return status;
}
