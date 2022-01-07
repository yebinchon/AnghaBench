
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int jack_detect; int tag; struct hda_jack_callback* callback; int nid; } ;
struct hda_jack_callback {struct hda_jack_callback* next; int nid; scalar_t__ func; } ;
struct hda_codec {scalar_t__ jackpoll_interval; } ;
typedef int hda_nid_t ;
typedef scalar_t__ hda_jack_callback_fn ;


 int AC_USRSP_EN ;
 int AC_VERB_SET_UNSOLICITED_ENABLE ;
 int ENOMEM ;
 struct hda_jack_callback* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct hda_jack_callback* kzalloc (int,int ) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_new (struct hda_codec*,int ) ;

struct hda_jack_callback *
snd_hda_jack_detect_enable_callback(struct hda_codec *codec, hda_nid_t nid,
        hda_jack_callback_fn func)
{
 struct hda_jack_tbl *jack;
 struct hda_jack_callback *callback = ((void*)0);
 int err;

 jack = snd_hda_jack_tbl_new(codec, nid);
 if (!jack)
  return ERR_PTR(-ENOMEM);
 if (func) {
  callback = kzalloc(sizeof(*callback), GFP_KERNEL);
  if (!callback)
   return ERR_PTR(-ENOMEM);
  callback->func = func;
  callback->nid = jack->nid;
  callback->next = jack->callback;
  jack->callback = callback;
 }

 if (jack->jack_detect)
  return callback;
 jack->jack_detect = 1;
 if (codec->jackpoll_interval > 0)
  return callback;
 err = snd_hda_codec_write_cache(codec, nid, 0,
      AC_VERB_SET_UNSOLICITED_ENABLE,
      AC_USRSP_EN | jack->tag);
 if (err < 0)
  return ERR_PTR(err);
 return callback;
}
