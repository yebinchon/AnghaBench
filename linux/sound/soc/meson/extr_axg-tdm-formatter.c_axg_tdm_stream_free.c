
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_tdm_stream {int lock; int formatter_list; } ;


 int WARN_ON (int) ;
 int kfree (struct axg_tdm_stream*) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;

void axg_tdm_stream_free(struct axg_tdm_stream *ts)
{





 WARN_ON(!list_empty(&ts->formatter_list));
 mutex_destroy(&ts->lock);
 kfree(ts);
}
