
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_us16x08_meter_store {int comp_index; scalar_t__ comp_active_index; } ;


 int GFP_KERNEL ;
 struct snd_us16x08_meter_store* kzalloc (int,int ) ;

__attribute__((used)) static struct snd_us16x08_meter_store *snd_us16x08_create_meter_store(void)
{
 struct snd_us16x08_meter_store *tmp;

 tmp = kzalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return ((void*)0);
 tmp->comp_index = 1;
 tmp->comp_active_index = 0;
 return tmp;
}
