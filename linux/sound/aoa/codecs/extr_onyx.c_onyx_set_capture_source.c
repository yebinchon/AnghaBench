
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onyx {int mutex; } ;
typedef int s8 ;


 int ONYX_ADC_INPUT_MIC ;
 int ONYX_REG_ADC_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int onyx_read_register (struct onyx*,int ,int *) ;
 int onyx_write_register (struct onyx*,int ,int ) ;

__attribute__((used)) static void onyx_set_capture_source(struct onyx *onyx, int mic)
{
 s8 v;

 mutex_lock(&onyx->mutex);
 onyx_read_register(onyx, ONYX_REG_ADC_CONTROL, &v);
 v &= ~ONYX_ADC_INPUT_MIC;
 if (mic)
  v |= ONYX_ADC_INPUT_MIC;
 onyx_write_register(onyx, ONYX_REG_ADC_CONTROL, v);
 mutex_unlock(&onyx->mutex);
}
