
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int channel; } ;
struct TYPE_3__ {int channel; } ;
struct snd_motu {TYPE_2__ tx_resources; TYPE_1__ rx_resources; } ;
typedef int reg ;
typedef int __be32 ;


 int CHANGE_RX_ISOC_COMM_STATE ;
 int CHANGE_TX_ISOC_COMM_STATE ;
 int ISOC_COMM_CONTROL_MASK ;
 int ISOC_COMM_CONTROL_OFFSET ;
 int RX_ISOC_COMM_CHANNEL_SHIFT ;
 int RX_ISOC_COMM_IS_ACTIVATED ;
 int TX_ISOC_COMM_CHANNEL_SHIFT ;
 int TX_ISOC_COMM_IS_ACTIVATED ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int begin_session(struct snd_motu *motu)
{
 __be32 reg;
 u32 data;
 int err;


 err = snd_motu_transaction_read(motu, ISOC_COMM_CONTROL_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;
 data = be32_to_cpu(reg) & ~ISOC_COMM_CONTROL_MASK;

 data |= CHANGE_RX_ISOC_COMM_STATE | RX_ISOC_COMM_IS_ACTIVATED |
  (motu->rx_resources.channel << RX_ISOC_COMM_CHANNEL_SHIFT) |
  CHANGE_TX_ISOC_COMM_STATE | TX_ISOC_COMM_IS_ACTIVATED |
  (motu->tx_resources.channel << TX_ISOC_COMM_CHANNEL_SHIFT);

 reg = cpu_to_be32(data);
 return snd_motu_transaction_write(motu, ISOC_COMM_CONTROL_OFFSET, &reg,
       sizeof(reg));
}
