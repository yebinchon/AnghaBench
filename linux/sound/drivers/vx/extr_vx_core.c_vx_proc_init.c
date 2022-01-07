
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct vx_core*,int ) ;
 int vx_proc_read ;

__attribute__((used)) static void vx_proc_init(struct vx_core *chip)
{
 snd_card_ro_proc_new(chip->card, "vx-status", chip, vx_proc_read);
}
