
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola_pcm {int num_streams; int * streams; } ;
struct lola {struct lola_pcm* pcm; } ;


 int lola_init_stream (struct lola*,int *,int,int,int) ;

int lola_init_pcm(struct lola *chip, int dir, int *nidp)
{
 struct lola_pcm *pcm = &chip->pcm[dir];
 int i, nid, err;

 nid = *nidp;
 for (i = 0; i < pcm->num_streams; i++, nid++) {
  err = lola_init_stream(chip, &pcm->streams[i], i, nid, dir);
  if (err < 0)
   return err;
 }
 *nidp = nid;
 return 0;
}
