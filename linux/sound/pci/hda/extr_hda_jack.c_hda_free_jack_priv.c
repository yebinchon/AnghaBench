
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_jack {struct hda_jack_tbl* private_data; } ;
struct hda_jack_tbl {int * jack; scalar_t__ nid; } ;



__attribute__((used)) static void hda_free_jack_priv(struct snd_jack *jack)
{
 struct hda_jack_tbl *jacks = jack->private_data;
 jacks->nid = 0;
 jacks->jack = ((void*)0);
}
