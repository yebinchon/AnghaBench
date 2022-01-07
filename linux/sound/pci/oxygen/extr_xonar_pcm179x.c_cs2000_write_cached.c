
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct xonar_pcm179x {size_t* cs2000_regs; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int cs2000_write (struct oxygen*,size_t,size_t) ;

__attribute__((used)) static void cs2000_write_cached(struct oxygen *chip, u8 reg, u8 value)
{
 struct xonar_pcm179x *data = chip->model_data;

 if (value != data->cs2000_regs[reg])
  cs2000_write(chip, reg, value);
}
