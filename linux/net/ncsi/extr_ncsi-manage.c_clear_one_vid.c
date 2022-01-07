
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ncsi_dev_priv {int dummy; } ;
struct ncsi_cmd_arg {int* bytes; scalar_t__* words; int type; } ;
struct ncsi_channel_vlan_filter {int n_vids; scalar_t__* vids; int bitmap; } ;
struct ncsi_channel {int lock; struct ncsi_channel_vlan_filter vlan_filter; } ;


 int NCSI_PKT_CMD_SVF ;
 int clear_bit (int,void*) ;
 int find_next_bit (void*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int clear_one_vid(struct ncsi_dev_priv *ndp, struct ncsi_channel *nc,
    struct ncsi_cmd_arg *nca)
{
 struct ncsi_channel_vlan_filter *ncf;
 unsigned long flags;
 void *bitmap;
 int index;
 u16 vid;

 ncf = &nc->vlan_filter;
 bitmap = &ncf->bitmap;

 spin_lock_irqsave(&nc->lock, flags);
 index = find_next_bit(bitmap, ncf->n_vids, 0);
 if (index >= ncf->n_vids) {
  spin_unlock_irqrestore(&nc->lock, flags);
  return -1;
 }
 vid = ncf->vids[index];

 clear_bit(index, bitmap);
 ncf->vids[index] = 0;
 spin_unlock_irqrestore(&nc->lock, flags);

 nca->type = NCSI_PKT_CMD_SVF;
 nca->words[1] = vid;

 nca->bytes[6] = index + 1;
 nca->bytes[7] = 0x00;
 return 0;
}
