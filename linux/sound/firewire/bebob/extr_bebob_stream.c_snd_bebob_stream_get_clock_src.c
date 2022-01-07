
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct snd_bebob_clock_spec {int (* get ) (struct snd_bebob*,unsigned int*) ;unsigned int num; int* types; } ;
struct snd_bebob {unsigned int sync_input_plug; TYPE_2__* unit; TYPE_1__* spec; } ;
typedef enum snd_bebob_clock_type { ____Placeholder_snd_bebob_clock_type } snd_bebob_clock_type ;
typedef enum avc_bridgeco_plug_type { ____Placeholder_avc_bridgeco_plug_type } avc_bridgeco_plug_type ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {struct snd_bebob_clock_spec* clock; } ;


 int AVC_BRIDGECO_ADDR_BYTES ;
 int AVC_BRIDGECO_PLUG_DIR_IN ;
 int AVC_BRIDGECO_PLUG_DIR_OUT ;
 int AVC_BRIDGECO_PLUG_MODE_SUBUNIT ;
 int AVC_BRIDGECO_PLUG_MODE_UNIT ;
 int AVC_BRIDGECO_PLUG_TYPE_ADDITION ;
 int AVC_BRIDGECO_PLUG_TYPE_DIG ;
 int AVC_BRIDGECO_PLUG_TYPE_SYNC ;
 int AVC_BRIDGECO_PLUG_UNIT_EXT ;
 int AVC_BRIDGECO_PLUG_UNIT_ISOC ;
 int EIO ;
 int SND_BEBOB_CLOCK_TYPE_EXTERNAL ;
 int SND_BEBOB_CLOCK_TYPE_INTERNAL ;
 int SND_BEBOB_CLOCK_TYPE_SYT ;
 int avc_bridgeco_fill_msu_addr (int*,int ,unsigned int) ;
 int avc_bridgeco_fill_unit_addr (int*,int ,int,int) ;
 int avc_bridgeco_get_plug_input (TYPE_2__*,int*,int*) ;
 int avc_bridgeco_get_plug_type (TYPE_2__*,int*,int*) ;
 int dev_err (int *,char*,unsigned int,...) ;
 int stub1 (struct snd_bebob*,unsigned int*) ;

int snd_bebob_stream_get_clock_src(struct snd_bebob *bebob,
       enum snd_bebob_clock_type *src)
{
 const struct snd_bebob_clock_spec *clk_spec = bebob->spec->clock;
 u8 addr[AVC_BRIDGECO_ADDR_BYTES], input[7];
 unsigned int id;
 enum avc_bridgeco_plug_type type;
 int err = 0;


 if (clk_spec) {
  err = clk_spec->get(bebob, &id);
  if (err < 0) {
   dev_err(&bebob->unit->device,
    "fail to get clock source: %d\n", err);
   goto end;
  }

  if (id >= clk_spec->num) {
   dev_err(&bebob->unit->device,
    "clock source %d out of range 0..%d\n",
    id, clk_spec->num - 1);
   err = -EIO;
   goto end;
  }

  *src = clk_spec->types[id];
  goto end;
 }





 if (bebob->sync_input_plug < 0) {
  *src = SND_BEBOB_CLOCK_TYPE_INTERNAL;
  goto end;
 }





 avc_bridgeco_fill_msu_addr(addr, AVC_BRIDGECO_PLUG_DIR_IN,
       bebob->sync_input_plug);
 err = avc_bridgeco_get_plug_input(bebob->unit, addr, input);
 if (err < 0) {
  dev_err(&bebob->unit->device,
   "fail to get an input for MSU in plug %d: %d\n",
   bebob->sync_input_plug, err);
  goto end;
 }





 if (input[0] == 0xff) {
  *src = SND_BEBOB_CLOCK_TYPE_INTERNAL;
  goto end;
 }


 if (input[0] == AVC_BRIDGECO_PLUG_DIR_OUT) {





  if (input[1] == AVC_BRIDGECO_PLUG_MODE_SUBUNIT &&
      input[2] == 0x0c) {
   *src = SND_BEBOB_CLOCK_TYPE_INTERNAL;
   goto end;
  }

 } else if (input[1] == AVC_BRIDGECO_PLUG_MODE_UNIT) {
  if (input[2] == AVC_BRIDGECO_PLUG_UNIT_ISOC) {
   if (input[3] == 0x00) {







    *src = SND_BEBOB_CLOCK_TYPE_SYT;
    goto end;
   } else {





    *src = SND_BEBOB_CLOCK_TYPE_EXTERNAL;
    goto end;
   }
  } else if (input[2] == AVC_BRIDGECO_PLUG_UNIT_EXT) {

   avc_bridgeco_fill_unit_addr(addr,
          AVC_BRIDGECO_PLUG_DIR_IN,
          AVC_BRIDGECO_PLUG_UNIT_EXT,
          input[3]);
   err = avc_bridgeco_get_plug_type(bebob->unit, addr,
        &type);
   if (err < 0)
    goto end;

   if (type == AVC_BRIDGECO_PLUG_TYPE_DIG) {




    *src = SND_BEBOB_CLOCK_TYPE_EXTERNAL;
    goto end;
   } else if (type == AVC_BRIDGECO_PLUG_TYPE_SYNC) {

    *src = SND_BEBOB_CLOCK_TYPE_EXTERNAL;
    goto end;
   } else if (type == AVC_BRIDGECO_PLUG_TYPE_ADDITION) {




    *src = SND_BEBOB_CLOCK_TYPE_INTERNAL;
    goto end;
   }
  }
 }


 err = -EIO;
end:
 return err;
}
