
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_asrc_pair {int index; scalar_t__ error; scalar_t__ channels; struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int lock; int ** pair; int channel_avail; int regmap; } ;
typedef enum asrc_pair_index { ____Placeholder_asrc_pair_index } asrc_pair_index ;


 int ASRCTR_ASRCEi_MASK (int) ;
 int REG_ASRCTR ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fsl_asrc_release_pair(struct fsl_asrc_pair *pair)
{
 struct fsl_asrc *asrc_priv = pair->asrc_priv;
 enum asrc_pair_index index = pair->index;
 unsigned long lock_flags;


 regmap_update_bits(asrc_priv->regmap, REG_ASRCTR,
      ASRCTR_ASRCEi_MASK(index), 0);

 spin_lock_irqsave(&asrc_priv->lock, lock_flags);

 asrc_priv->channel_avail += pair->channels;
 asrc_priv->pair[index] = ((void*)0);
 pair->error = 0;

 spin_unlock_irqrestore(&asrc_priv->lock, lock_flags);
}
