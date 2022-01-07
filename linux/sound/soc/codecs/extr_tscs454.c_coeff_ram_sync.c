
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; int cache; int synced; } ;
struct TYPE_5__ {int lock; int cache; int synced; } ;
struct TYPE_4__ {int lock; int cache; int synced; } ;
struct tscs454 {TYPE_3__ sub_ram; TYPE_2__ spk_ram; TYPE_1__ dac_ram; } ;
struct snd_soc_component {int dummy; } ;


 int COEFF_RAM_COEFF_COUNT ;
 int R_DACCRADD ;
 int R_DACCRS ;
 int R_DACCRWDL ;
 int R_SPKCRADD ;
 int R_SPKCRS ;
 int R_SPKCRWDL ;
 int R_SUBCRADD ;
 int R_SUBCRS ;
 int R_SUBCRWDL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int write_coeff_ram (struct snd_soc_component*,int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static inline int coeff_ram_sync(struct snd_soc_component *component,
  struct tscs454 *tscs454)
{
 int ret;

 mutex_lock(&tscs454->dac_ram.lock);
 if (!tscs454->dac_ram.synced) {
  ret = write_coeff_ram(component, tscs454->dac_ram.cache,
    R_DACCRS, R_DACCRADD, R_DACCRWDL,
    0x00, COEFF_RAM_COEFF_COUNT);
  if (ret < 0) {
   mutex_unlock(&tscs454->dac_ram.lock);
   return ret;
  }
 }
 mutex_unlock(&tscs454->dac_ram.lock);

 mutex_lock(&tscs454->spk_ram.lock);
 if (!tscs454->spk_ram.synced) {
  ret = write_coeff_ram(component, tscs454->spk_ram.cache,
    R_SPKCRS, R_SPKCRADD, R_SPKCRWDL,
    0x00, COEFF_RAM_COEFF_COUNT);
  if (ret < 0) {
   mutex_unlock(&tscs454->spk_ram.lock);
   return ret;
  }
 }
 mutex_unlock(&tscs454->spk_ram.lock);

 mutex_lock(&tscs454->sub_ram.lock);
 if (!tscs454->sub_ram.synced) {
  ret = write_coeff_ram(component, tscs454->sub_ram.cache,
    R_SUBCRS, R_SUBCRADD, R_SUBCRWDL,
    0x00, COEFF_RAM_COEFF_COUNT);
  if (ret < 0) {
   mutex_unlock(&tscs454->sub_ram.lock);
   return ret;
  }
 }
 mutex_unlock(&tscs454->sub_ram.lock);

 return 0;
}
