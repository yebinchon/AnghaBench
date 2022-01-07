
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_us16x08_eq_store {int*** val; } ;


 int GFP_KERNEL ;
 int SND_US16X08_EQ_HIGHFREQ_BIAS ;
 int SND_US16X08_ID_EQ_BAND_COUNT ;
 int SND_US16X08_MAX_CHANNELS ;
 struct snd_us16x08_eq_store* kmalloc (int,int ) ;

__attribute__((used)) static struct snd_us16x08_eq_store *snd_us16x08_create_eq_store(void)
{
 int i, b_idx;
 struct snd_us16x08_eq_store *tmp;

 tmp = kmalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return ((void*)0);

 for (i = 0; i < SND_US16X08_MAX_CHANNELS; i++) {
  for (b_idx = 0; b_idx < SND_US16X08_ID_EQ_BAND_COUNT; b_idx++) {
   tmp->val[b_idx][0][i] = 0x0c;
   tmp->val[b_idx][3][i] = 0x00;
   switch (b_idx) {
   case 0:
    tmp->val[b_idx][1][i] = 0x05;
    tmp->val[b_idx][2][i] = 0xff;
    break;
   case 1:
    tmp->val[b_idx][1][i] = 0x0e;
    tmp->val[b_idx][2][i] = 0x02;
    break;
   case 2:
    tmp->val[b_idx][1][i] = 0x1b;
    tmp->val[b_idx][2][i] = 0x02;
    break;
   case 3:
    tmp->val[b_idx][1][i] = 0x2f
     - SND_US16X08_EQ_HIGHFREQ_BIAS;
    tmp->val[b_idx][2][i] = 0xff;
    break;
   }
  }
 }
 return tmp;
}
