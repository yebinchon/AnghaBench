
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_us16x08_comp_store {int** val; } ;


 size_t COMP_STORE_IDX (int ) ;
 int GFP_KERNEL ;
 int SND_US16X08_ID_COMP_ATTACK ;
 int SND_US16X08_ID_COMP_GAIN ;
 int SND_US16X08_ID_COMP_RATIO ;
 int SND_US16X08_ID_COMP_RELEASE ;
 int SND_US16X08_ID_COMP_SWITCH ;
 int SND_US16X08_ID_COMP_THRESHOLD ;
 int SND_US16X08_MAX_CHANNELS ;
 struct snd_us16x08_comp_store* kmalloc (int,int ) ;

__attribute__((used)) static struct snd_us16x08_comp_store *snd_us16x08_create_comp_store(void)
{
 int i;
 struct snd_us16x08_comp_store *tmp;

 tmp = kmalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return ((void*)0);

 for (i = 0; i < SND_US16X08_MAX_CHANNELS; i++) {
  tmp->val[COMP_STORE_IDX(SND_US16X08_ID_COMP_THRESHOLD)][i]
   = 0x20;
  tmp->val[COMP_STORE_IDX(SND_US16X08_ID_COMP_RATIO)][i] = 0x00;
  tmp->val[COMP_STORE_IDX(SND_US16X08_ID_COMP_GAIN)][i] = 0x00;
  tmp->val[COMP_STORE_IDX(SND_US16X08_ID_COMP_SWITCH)][i] = 0x00;
  tmp->val[COMP_STORE_IDX(SND_US16X08_ID_COMP_ATTACK)][i] = 0x00;
  tmp->val[COMP_STORE_IDX(SND_US16X08_ID_COMP_RELEASE)][i] = 0x00;
 }
 return tmp;
}
