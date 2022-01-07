
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int afg_function_id; int afg_unsol; int mfg_function_id; int mfg_unsol; void* mfg; void* afg; } ;
typedef void* hda_nid_t ;




 int AC_NODE_ROOT ;
 int AC_PAR_FUNCTION_TYPE ;
 int snd_hdac_get_sub_nodes (struct hdac_device*,int ,void**) ;
 int snd_hdac_read_parm (struct hdac_device*,void*,int ) ;

__attribute__((used)) static void setup_fg_nodes(struct hdac_device *codec)
{
 int i, total_nodes, function_id;
 hda_nid_t nid;

 total_nodes = snd_hdac_get_sub_nodes(codec, AC_NODE_ROOT, &nid);
 for (i = 0; i < total_nodes; i++, nid++) {
  function_id = snd_hdac_read_parm(codec, nid,
       AC_PAR_FUNCTION_TYPE);
  switch (function_id & 0xff) {
  case 129:
   codec->afg = nid;
   codec->afg_function_id = function_id & 0xff;
   codec->afg_unsol = (function_id >> 8) & 1;
   break;
  case 128:
   codec->mfg = nid;
   codec->mfg_function_id = function_id & 0xff;
   codec->mfg_unsol = (function_id >> 8) & 1;
   break;
  default:
   break;
  }
 }
}
