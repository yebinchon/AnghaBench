
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct snd_bebob {int sync_input_plug; TYPE_1__* unit; } ;
typedef enum avc_bridgeco_plug_type { ____Placeholder_avc_bridgeco_plug_type } avc_bridgeco_plug_type ;
struct TYPE_3__ {int device; } ;


 int AVC_BRIDGECO_ADDR_BYTES ;
 int AVC_BRIDGECO_PLUG_DIR_IN ;
 int AVC_BRIDGECO_PLUG_TYPE_SYNC ;
 int AVC_PLUG_INFO_BUF_BYTES ;
 int avc_bridgeco_fill_msu_addr (unsigned int*,int ,unsigned int) ;
 int avc_bridgeco_get_plug_type (TYPE_1__*,unsigned int*,int*) ;
 int avc_general_get_plug_info (TYPE_1__*,int,int,int,unsigned int*) ;
 int dev_err (int *,char*,unsigned int,...) ;

__attribute__((used)) static int
seek_msu_sync_input_plug(struct snd_bebob *bebob)
{
 u8 plugs[AVC_PLUG_INFO_BUF_BYTES], addr[AVC_BRIDGECO_ADDR_BYTES];
 unsigned int i;
 enum avc_bridgeco_plug_type type;
 int err;


 err = avc_general_get_plug_info(bebob->unit, 0x0c, 0x00, 0x00, plugs);
 if (err < 0) {
  dev_err(&bebob->unit->device,
   "fail to get info for MSU in/out plugs: %d\n",
   err);
  goto end;
 }


 bebob->sync_input_plug = -1;
 for (i = 0; i < plugs[0]; i++) {
  avc_bridgeco_fill_msu_addr(addr, AVC_BRIDGECO_PLUG_DIR_IN, i);
  err = avc_bridgeco_get_plug_type(bebob->unit, addr, &type);
  if (err < 0) {
   dev_err(&bebob->unit->device,
    "fail to get type for MSU in plug %d: %d\n",
    i, err);
   goto end;
  }

  if (type == AVC_BRIDGECO_PLUG_TYPE_SYNC) {
   bebob->sync_input_plug = i;
   break;
  }
 }
end:
 return err;
}
