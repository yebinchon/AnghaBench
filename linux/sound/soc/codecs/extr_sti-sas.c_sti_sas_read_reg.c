
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int regmap; } ;
struct sti_sas_data {TYPE_1__ dac; } ;


 int regmap_read (int ,unsigned int,scalar_t__*) ;

__attribute__((used)) static int sti_sas_read_reg(void *context, unsigned int reg,
       unsigned int *value)
{
 struct sti_sas_data *drvdata = context;
 int status;
 u32 val;

 status = regmap_read(drvdata->dac.regmap, reg, &val);
 *value = (unsigned int)val;

 return status;
}
