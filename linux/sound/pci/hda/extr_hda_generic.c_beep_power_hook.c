
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_beep {int nid; int codec; } ;


 int set_path_power (int ,int ,int,int) ;

__attribute__((used)) static void beep_power_hook(struct hda_beep *beep, bool on)
{
 set_path_power(beep->codec, beep->nid, -1, on);
}
