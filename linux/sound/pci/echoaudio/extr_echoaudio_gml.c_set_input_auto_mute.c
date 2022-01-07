
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {int digital_in_automute; int input_clock; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,int) ;
 int set_input_clock (struct echoaudio*,int ) ;

__attribute__((used)) static int set_input_auto_mute(struct echoaudio *chip, int automute)
{
 dev_dbg(chip->card->dev, "set_input_auto_mute %d\n", automute);

 chip->digital_in_automute = automute;



 return set_input_clock(chip, chip->input_clock);
}
