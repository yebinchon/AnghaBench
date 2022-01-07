
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_conn_list {int list; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int add_conn_list (struct hda_codec*,int ,int,int const*) ;
 int kfree (struct hda_conn_list*) ;
 int list_del (int *) ;
 struct hda_conn_list* lookup_conn_list (struct hda_codec*,int ) ;

int snd_hda_override_conn_list(struct hda_codec *codec, hda_nid_t nid, int len,
          const hda_nid_t *list)
{
 struct hda_conn_list *p;

 p = lookup_conn_list(codec, nid);
 if (p) {
  list_del(&p->list);
  kfree(p);
 }

 return add_conn_list(codec, nid, len, list);
}
