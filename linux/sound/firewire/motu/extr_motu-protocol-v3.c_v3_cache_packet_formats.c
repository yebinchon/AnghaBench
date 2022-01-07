
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int pcm_byte_offset; } ;
struct snd_motu {TYPE_2__ rx_packet_formats; TYPE_2__ tx_packet_formats; TYPE_1__* spec; } ;
typedef int reg ;
typedef int __be32 ;
struct TYPE_4__ {int flags; int analog_out_ports; int analog_in_ports; } ;


 int AMDTP_IN_STREAM ;
 int AMDTP_OUT_STREAM ;
 int V3_ENABLE_OPT_IN_IFACE_A ;
 int V3_ENABLE_OPT_IN_IFACE_B ;
 int V3_ENABLE_OPT_OUT_IFACE_A ;
 int V3_ENABLE_OPT_OUT_IFACE_B ;
 int V3_NO_ADAT_OPT_IN_IFACE_A ;
 int V3_NO_ADAT_OPT_IN_IFACE_B ;
 int V3_NO_ADAT_OPT_OUT_IFACE_A ;
 int V3_NO_ADAT_OPT_OUT_IFACE_B ;
 int V3_OPT_IFACE_MODE_OFFSET ;
 int be32_to_cpu (int ) ;
 int calculate_differed_part (TYPE_2__*,int ,int ,int ,int ,int ,int ) ;
 int calculate_fixed_part (TYPE_2__*,int ,int ,int ) ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int v3_cache_packet_formats(struct snd_motu *motu)
{
 __be32 reg;
 u32 data;
 int err;

 err = snd_motu_transaction_read(motu, V3_OPT_IFACE_MODE_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;
 data = be32_to_cpu(reg);

 calculate_fixed_part(&motu->tx_packet_formats, AMDTP_IN_STREAM,
        motu->spec->flags, motu->spec->analog_in_ports);
 calculate_differed_part(&motu->tx_packet_formats,
   motu->spec->flags, data,
   V3_ENABLE_OPT_IN_IFACE_A, V3_NO_ADAT_OPT_IN_IFACE_A,
   V3_ENABLE_OPT_IN_IFACE_B, V3_NO_ADAT_OPT_IN_IFACE_B);

 calculate_fixed_part(&motu->rx_packet_formats, AMDTP_OUT_STREAM,
        motu->spec->flags, motu->spec->analog_out_ports);
 calculate_differed_part(&motu->rx_packet_formats,
   motu->spec->flags, data,
   V3_ENABLE_OPT_OUT_IFACE_A, V3_NO_ADAT_OPT_OUT_IFACE_A,
   V3_ENABLE_OPT_OUT_IFACE_B, V3_NO_ADAT_OPT_OUT_IFACE_B);

 motu->tx_packet_formats.pcm_byte_offset = 10;
 motu->rx_packet_formats.pcm_byte_offset = 10;

 return 0;
}
