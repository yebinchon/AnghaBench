
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_compr_stream {int info_area; } ;
struct sprd_compr_playinfo {int dummy; } ;
struct snd_compr_stream {struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct sprd_compr_stream* private_data; } ;


 int memset (int ,int ,int) ;
 int snd_compr_drain_notify (struct snd_compr_stream*) ;

__attribute__((used)) static void sprd_platform_compr_drain_notify(void *arg)
{
 struct snd_compr_stream *cstream = arg;
 struct snd_compr_runtime *runtime = cstream->runtime;
 struct sprd_compr_stream *stream = runtime->private_data;

 memset(stream->info_area, 0, sizeof(struct sprd_compr_playinfo));

 snd_compr_drain_notify(cstream);
}
