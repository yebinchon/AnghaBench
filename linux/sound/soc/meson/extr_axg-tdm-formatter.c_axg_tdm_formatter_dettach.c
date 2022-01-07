
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_tdm_stream {int lock; } ;
struct axg_tdm_formatter {int list; struct axg_tdm_stream* stream; } ;


 int axg_tdm_formatter_disable (struct axg_tdm_formatter*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void axg_tdm_formatter_dettach(struct axg_tdm_formatter *formatter)
{
 struct axg_tdm_stream *ts = formatter->stream;

 mutex_lock(&ts->lock);
 list_del(&formatter->list);
 mutex_unlock(&ts->lock);

 axg_tdm_formatter_disable(formatter);
}
