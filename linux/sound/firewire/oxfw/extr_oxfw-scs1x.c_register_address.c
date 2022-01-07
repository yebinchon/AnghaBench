
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct snd_oxfw {int unit; struct fw_scs1x* spec; } ;
struct TYPE_2__ {int offset; } ;
struct fw_scs1x {TYPE_1__ hss_handler; } ;
typedef int data ;
typedef int __be64 ;


 int HSS1394_ADDRESS ;
 scalar_t__ HSS1394_TAG_CHANGE_ADDRESS ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int cpu_to_be64 (int) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int register_address(struct snd_oxfw *oxfw)
{
 struct fw_scs1x *scs = oxfw->spec;
 __be64 data;

 data = cpu_to_be64(((u64)HSS1394_TAG_CHANGE_ADDRESS << 56) |
       scs->hss_handler.offset);
 return snd_fw_transaction(oxfw->unit, TCODE_WRITE_BLOCK_REQUEST,
      HSS1394_ADDRESS, &data, sizeof(data), 0);
}
