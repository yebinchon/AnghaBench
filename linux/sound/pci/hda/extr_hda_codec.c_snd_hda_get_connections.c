
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int EINVAL ;
 int codec_err (struct hda_codec*,char*,int,int ) ;
 int memcpy (int *,int const*,int) ;
 int snd_hda_get_conn_list (struct hda_codec*,int ,int const**) ;

int snd_hda_get_connections(struct hda_codec *codec, hda_nid_t nid,
       hda_nid_t *conn_list, int max_conns)
{
 const hda_nid_t *list;
 int len = snd_hda_get_conn_list(codec, nid, &list);

 if (len > 0 && conn_list) {
  if (len > max_conns) {
   codec_err(codec, "Too many connections %d for NID 0x%x\n",
       len, nid);
   return -EINVAL;
  }
  memcpy(conn_list, list, len * sizeof(hda_nid_t));
 }

 return len;
}
