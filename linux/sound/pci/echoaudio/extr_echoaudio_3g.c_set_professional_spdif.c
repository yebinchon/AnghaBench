
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {char professional_spdif; int sample_rate; TYPE_1__* comm_page; } ;
struct TYPE_2__ {int control_register; } ;


 int get_frq_reg (struct echoaudio*) ;
 int le32_to_cpu (int ) ;
 int set_spdif_bits (struct echoaudio*,int ,int ) ;
 int write_control_reg (struct echoaudio*,int ,int ,int ) ;

__attribute__((used)) static int set_professional_spdif(struct echoaudio *chip, char prof)
{
 u32 control_reg;

 control_reg = le32_to_cpu(chip->comm_page->control_register);
 chip->professional_spdif = prof;
 control_reg = set_spdif_bits(chip, control_reg, chip->sample_rate);
 return write_control_reg(chip, control_reg, get_frq_reg(chip), 0);
}
