
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct hdsp* private_data; } ;
struct hdsp {int dummy; } ;


 int snd_hdsp_free (struct hdsp*) ;

__attribute__((used)) static void snd_hdsp_card_free(struct snd_card *card)
{
 struct hdsp *hdsp = card->private_data;

 if (hdsp)
  snd_hdsp_free(hdsp);
}
