
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc_array (int,int,int ) ;
 int snd_hda_get_num_raw_conns (struct hda_codec*,int ) ;
 int snd_hda_get_raw_connections (struct hda_codec*,int ,int *,int) ;
 int snd_hda_override_conn_list (struct hda_codec*,int ,int,int *) ;

__attribute__((used)) static int read_and_add_raw_conns(struct hda_codec *codec, hda_nid_t nid)
{
 hda_nid_t list[32];
 hda_nid_t *result = list;
 int len;

 len = snd_hda_get_raw_connections(codec, nid, list, ARRAY_SIZE(list));
 if (len == -ENOSPC) {
  len = snd_hda_get_num_raw_conns(codec, nid);
  result = kmalloc_array(len, sizeof(hda_nid_t), GFP_KERNEL);
  if (!result)
   return -ENOMEM;
  len = snd_hda_get_raw_connections(codec, nid, result, len);
 }
 if (len >= 0)
  len = snd_hda_override_conn_list(codec, nid, len, result);
 if (result != list)
  kfree(result);
 return len;
}
