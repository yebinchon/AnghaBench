
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int ref_count; int pcm_release; } ;
struct snd_pcm_file {struct snd_pcm_substream* substream; } ;
struct snd_pcm {int dummy; } ;
struct file {struct snd_pcm_file* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_pcm_file* kzalloc (int,int ) ;
 int pcm_release_private ;
 int snd_pcm_open_substream (struct snd_pcm*,int,struct file*,struct snd_pcm_substream**) ;
 int snd_pcm_release_substream (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_open_file(struct file *file,
        struct snd_pcm *pcm,
        int stream)
{
 struct snd_pcm_file *pcm_file;
 struct snd_pcm_substream *substream;
 int err;

 err = snd_pcm_open_substream(pcm, stream, file, &substream);
 if (err < 0)
  return err;

 pcm_file = kzalloc(sizeof(*pcm_file), GFP_KERNEL);
 if (pcm_file == ((void*)0)) {
  snd_pcm_release_substream(substream);
  return -ENOMEM;
 }
 pcm_file->substream = substream;
 if (substream->ref_count == 1)
  substream->pcm_release = pcm_release_private;
 file->private_data = pcm_file;

 return 0;
}
