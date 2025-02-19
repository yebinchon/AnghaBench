
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_CONNECT_SEL ;
 unsigned int AC_WID_AUD_MIX ;
 unsigned int AC_WID_POWER ;
 unsigned int AC_WID_VOL_KNB ;
 scalar_t__ memcmp (int const*,int *,int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_get_conn_list (struct hda_codec*,int ,int const**) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_conn_list(struct snd_info_buffer *buffer,
       struct hda_codec *codec, hda_nid_t nid,
       unsigned int wid_type, hda_nid_t *conn,
       int conn_len)
{
 int c, curr = -1;
 const hda_nid_t *list;
 int cache_len;

 if (conn_len > 1 &&
     wid_type != AC_WID_AUD_MIX &&
     wid_type != AC_WID_VOL_KNB &&
     wid_type != AC_WID_POWER)
  curr = snd_hda_codec_read(codec, nid, 0,
       AC_VERB_GET_CONNECT_SEL, 0);
 snd_iprintf(buffer, "  Connection: %d\n", conn_len);
 if (conn_len > 0) {
  snd_iprintf(buffer, "    ");
  for (c = 0; c < conn_len; c++) {
   snd_iprintf(buffer, " 0x%02x", conn[c]);
   if (c == curr)
    snd_iprintf(buffer, "*");
  }
  snd_iprintf(buffer, "\n");
 }


 cache_len = snd_hda_get_conn_list(codec, nid, &list);
 if (cache_len >= 0 && (cache_len != conn_len ||
         memcmp(list, conn, conn_len) != 0)) {
  snd_iprintf(buffer, "  In-driver Connection: %d\n", cache_len);
  if (cache_len > 0) {
   snd_iprintf(buffer, "    ");
   for (c = 0; c < cache_len; c++)
    snd_iprintf(buffer, " 0x%02x", list[c]);
   snd_iprintf(buffer, "\n");
  }
 }
}
