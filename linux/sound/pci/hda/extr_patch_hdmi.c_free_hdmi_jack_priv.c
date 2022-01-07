
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack {struct hdmi_pcm* private_data; } ;
struct hdmi_pcm {int * jack; } ;



__attribute__((used)) static void free_hdmi_jack_priv(struct snd_jack *jack)
{
 struct hdmi_pcm *pcm = jack->private_data;

 pcm->jack = ((void*)0);
}
