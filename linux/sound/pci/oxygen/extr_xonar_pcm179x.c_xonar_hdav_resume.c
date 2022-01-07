
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_hdav {int hdmi; } ;
struct oxygen {struct xonar_hdav* model_data; } ;


 int pcm1796_registers_init (struct oxygen*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_hdmi_resume (struct oxygen*,int *) ;

__attribute__((used)) static void xonar_hdav_resume(struct oxygen *chip)
{
 struct xonar_hdav *data = chip->model_data;

 pcm1796_registers_init(chip);
 xonar_hdmi_resume(chip, &data->hdmi);
 xonar_enable_output(chip);
}
