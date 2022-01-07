
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_motu {TYPE_2__* spec; } ;
typedef int reg ;
typedef int __be32 ;
struct TYPE_4__ {TYPE_1__* protocol; } ;
struct TYPE_3__ {int (* switch_fetching_mode ) (struct snd_motu*,int) ;} ;


 int CHANGE_RX_ISOC_COMM_STATE ;
 int CHANGE_TX_ISOC_COMM_STATE ;
 int ISOC_COMM_CONTROL_OFFSET ;
 int RX_ISOC_COMM_IS_ACTIVATED ;
 int TX_ISOC_COMM_IS_ACTIVATED ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;
 int snd_motu_transaction_write (struct snd_motu*,int ,int *,int) ;
 int stub1 (struct snd_motu*,int) ;

__attribute__((used)) static void finish_session(struct snd_motu *motu)
{
 __be32 reg;
 u32 data;
 int err;

 err = motu->spec->protocol->switch_fetching_mode(motu, 0);
 if (err < 0)
  return;

 err = snd_motu_transaction_read(motu, ISOC_COMM_CONTROL_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return;
 data = be32_to_cpu(reg);

 data &= ~(RX_ISOC_COMM_IS_ACTIVATED | TX_ISOC_COMM_IS_ACTIVATED);
 data |= CHANGE_RX_ISOC_COMM_STATE | CHANGE_TX_ISOC_COMM_STATE;

 reg = cpu_to_be32(data);
 snd_motu_transaction_write(motu, ISOC_COMM_CONTROL_OFFSET, &reg,
       sizeof(reg));
}
