
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_file {struct snd_rawmidi* rmidi; int * output; int * input; } ;
struct snd_rawmidi {int open_wait; int open_mutex; } ;


 int close_substream (struct snd_rawmidi*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void rawmidi_release_priv(struct snd_rawmidi_file *rfile)
{
 struct snd_rawmidi *rmidi;

 rmidi = rfile->rmidi;
 mutex_lock(&rmidi->open_mutex);
 if (rfile->input) {
  close_substream(rmidi, rfile->input, 1);
  rfile->input = ((void*)0);
 }
 if (rfile->output) {
  close_substream(rmidi, rfile->output, 1);
  rfile->output = ((void*)0);
 }
 rfile->rmidi = ((void*)0);
 mutex_unlock(&rmidi->open_mutex);
 wake_up(&rmidi->open_wait);
}
