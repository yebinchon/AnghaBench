
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ts_config {int dummy; } ;
struct text_match {scalar_t__ from_offset; scalar_t__ to_offset; scalar_t__ from_layer; scalar_t__ to_layer; struct ts_config* config; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct tcf_em_text {int pattern_len; scalar_t__ from_layer; scalar_t__ to_layer; scalar_t__ from_offset; scalar_t__ to_offset; int algo; } ;
struct net {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ts_config*) ;
 int PTR_ERR (struct ts_config*) ;
 int TS_AUTOLOAD ;
 struct text_match* kmalloc (int,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int textsearch_destroy (struct ts_config*) ;
 struct ts_config* textsearch_prepare (int ,int *,int,int ,int) ;

__attribute__((used)) static int em_text_change(struct net *net, void *data, int len,
     struct tcf_ematch *m)
{
 struct text_match *tm;
 struct tcf_em_text *conf = data;
 struct ts_config *ts_conf;
 int flags = 0;

 if (len < sizeof(*conf) || len < (sizeof(*conf) + conf->pattern_len))
  return -EINVAL;

 if (conf->from_layer > conf->to_layer)
  return -EINVAL;

 if (conf->from_layer == conf->to_layer &&
     conf->from_offset > conf->to_offset)
  return -EINVAL;

retry:
 ts_conf = textsearch_prepare(conf->algo, (u8 *) conf + sizeof(*conf),
         conf->pattern_len, GFP_KERNEL, flags);

 if (flags & TS_AUTOLOAD)
  rtnl_lock();

 if (IS_ERR(ts_conf)) {
  if (PTR_ERR(ts_conf) == -ENOENT && !(flags & TS_AUTOLOAD)) {
   rtnl_unlock();
   flags |= TS_AUTOLOAD;
   goto retry;
  } else
   return PTR_ERR(ts_conf);
 } else if (flags & TS_AUTOLOAD) {
  textsearch_destroy(ts_conf);
  return -EAGAIN;
 }

 tm = kmalloc(sizeof(*tm), GFP_KERNEL);
 if (tm == ((void*)0)) {
  textsearch_destroy(ts_conf);
  return -ENOBUFS;
 }

 tm->from_offset = conf->from_offset;
 tm->to_offset = conf->to_offset;
 tm->from_layer = conf->from_layer;
 tm->to_layer = conf->to_layer;
 tm->config = ts_conf;

 m->datalen = sizeof(*tm);
 m->data = (unsigned long) tm;

 return 0;
}
