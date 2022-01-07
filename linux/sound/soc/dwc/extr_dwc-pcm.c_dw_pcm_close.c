
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int synchronize_rcu () ;

__attribute__((used)) static int dw_pcm_close(struct snd_pcm_substream *substream)
{
 synchronize_rcu();
 return 0;
}
