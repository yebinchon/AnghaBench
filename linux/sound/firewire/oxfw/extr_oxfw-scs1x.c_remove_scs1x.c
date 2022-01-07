
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {struct fw_scs1x* private_data; } ;
struct fw_scs1x {int hss_handler; } ;


 int fw_core_remove_address_handler (int *) ;

__attribute__((used)) static void remove_scs1x(struct snd_rawmidi *rmidi)
{
 struct fw_scs1x *scs = rmidi->private_data;

 fw_core_remove_address_handler(&scs->hss_handler);
}
