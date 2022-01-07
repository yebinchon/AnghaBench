
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_queue {int traceid_queues_list; int decoder; } ;
struct cs_etm_decoder_params {int dummy; } ;
struct cs_etm_auxtrace {int num_cpu; } ;


 int CS_ETM_OPERATION_DECODE ;
 scalar_t__ cs_etm__init_decoder_params (struct cs_etm_decoder_params*,struct cs_etm_queue*,int ) ;
 scalar_t__ cs_etm__init_trace_params (struct cs_etm_trace_params*,struct cs_etm_auxtrace*) ;
 int cs_etm__mem_access ;
 scalar_t__ cs_etm_decoder__add_mem_access_cb (int ,int,int ,int ) ;
 int cs_etm_decoder__free (int ) ;
 int cs_etm_decoder__new (int,struct cs_etm_decoder_params*,struct cs_etm_trace_params*) ;
 int free (struct cs_etm_queue*) ;
 int intlist__delete (int ) ;
 int intlist__new (int *) ;
 void* zalloc (int) ;
 int zfree (struct cs_etm_trace_params**) ;

__attribute__((used)) static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
{
 struct cs_etm_decoder_params d_params;
 struct cs_etm_trace_params *t_params = ((void*)0);
 struct cs_etm_queue *etmq;

 etmq = zalloc(sizeof(*etmq));
 if (!etmq)
  return ((void*)0);

 etmq->traceid_queues_list = intlist__new(((void*)0));
 if (!etmq->traceid_queues_list)
  goto out_free;


 t_params = zalloc(sizeof(*t_params) * etm->num_cpu);

 if (!t_params)
  goto out_free;

 if (cs_etm__init_trace_params(t_params, etm))
  goto out_free;


 if (cs_etm__init_decoder_params(&d_params, etmq,
     CS_ETM_OPERATION_DECODE))
  goto out_free;

 etmq->decoder = cs_etm_decoder__new(etm->num_cpu, &d_params, t_params);

 if (!etmq->decoder)
  goto out_free;





 if (cs_etm_decoder__add_mem_access_cb(etmq->decoder,
           0x0L, ((u64) -1L),
           cs_etm__mem_access))
  goto out_free_decoder;

 zfree(&t_params);
 return etmq;

out_free_decoder:
 cs_etm_decoder__free(etmq->decoder);
out_free:
 intlist__delete(etmq->traceid_queues_list);
 free(etmq);

 return ((void*)0);
}
