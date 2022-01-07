
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_queue {int chain; int last_branch_rb; int last_branch; int event_buf; int decoder; int thread; } ;


 int free (struct intel_pt_queue*) ;
 int intel_pt_decoder_free (int ) ;
 int thread__zput (int ) ;
 int zfree (int *) ;

__attribute__((used)) static void intel_pt_free_queue(void *priv)
{
 struct intel_pt_queue *ptq = priv;

 if (!ptq)
  return;
 thread__zput(ptq->thread);
 intel_pt_decoder_free(ptq->decoder);
 zfree(&ptq->event_buf);
 zfree(&ptq->last_branch);
 zfree(&ptq->last_branch_rb);
 zfree(&ptq->chain);
 free(ptq);
}
