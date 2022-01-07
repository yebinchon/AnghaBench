
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int card; } ;


 int snd_card_ro_proc_new (int ,char*,struct hdsp*,int ) ;
 int snd_hdsp_proc_read ;

__attribute__((used)) static void snd_hdsp_proc_init(struct hdsp *hdsp)
{
 snd_card_ro_proc_new(hdsp->card, "hdsp", hdsp, snd_hdsp_proc_read);
}
