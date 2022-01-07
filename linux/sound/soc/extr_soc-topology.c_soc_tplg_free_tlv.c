
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int dummy; } ;
struct TYPE_2__ {int p; } ;
struct snd_kcontrol_new {TYPE_1__ tlv; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void soc_tplg_free_tlv(struct soc_tplg *tplg,
 struct snd_kcontrol_new *kc)
{
 kfree(kc->tlv.p);
}
