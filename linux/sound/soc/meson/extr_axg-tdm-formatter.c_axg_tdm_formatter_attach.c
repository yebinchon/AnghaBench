
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_tdm_stream {int lock; int formatter_list; scalar_t__ ready; } ;
struct axg_tdm_formatter {int list; struct axg_tdm_stream* stream; } ;


 int axg_tdm_formatter_enable (struct axg_tdm_formatter*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int axg_tdm_formatter_attach(struct axg_tdm_formatter *formatter)
{
 struct axg_tdm_stream *ts = formatter->stream;
 int ret = 0;

 mutex_lock(&ts->lock);


 if (ts->ready) {
  ret = axg_tdm_formatter_enable(formatter);
  if (ret) {
   pr_err("failed to enable formatter\n");
   goto out;
  }
 }

 list_add_tail(&formatter->list, &ts->formatter_list);
out:
 mutex_unlock(&ts->lock);
 return ret;
}
