
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_tdm_stream {struct axg_tdm_iface* iface; int lock; int formatter_list; } ;
struct axg_tdm_iface {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct axg_tdm_stream* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct axg_tdm_stream *axg_tdm_stream_alloc(struct axg_tdm_iface *iface)
{
 struct axg_tdm_stream *ts;

 ts = kzalloc(sizeof(*ts), GFP_KERNEL);
 if (ts) {
  INIT_LIST_HEAD(&ts->formatter_list);
  mutex_init(&ts->lock);
  ts->iface = iface;
 }

 return ts;
}
