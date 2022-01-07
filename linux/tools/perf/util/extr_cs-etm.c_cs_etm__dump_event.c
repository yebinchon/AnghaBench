
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_decoder_params {int dummy; } ;
struct cs_etm_decoder {int dummy; } ;
struct cs_etm_auxtrace {int num_cpu; } ;
struct auxtrace_buffer {size_t size; scalar_t__ data; int offset; } ;


 int CS_ETM_OPERATION_PRINT ;
 char* PERF_COLOR_BLUE ;
 int color_fprintf (int ,char const*,char*,size_t) ;
 scalar_t__ cs_etm__init_decoder_params (struct cs_etm_decoder_params*,int *,int ) ;
 scalar_t__ cs_etm__init_trace_params (struct cs_etm_trace_params*,struct cs_etm_auxtrace*) ;
 int cs_etm_decoder__free (struct cs_etm_decoder*) ;
 struct cs_etm_decoder* cs_etm_decoder__new (int,struct cs_etm_decoder_params*,struct cs_etm_trace_params*) ;
 int cs_etm_decoder__process_data_block (struct cs_etm_decoder*,int ,int *,size_t,size_t*) ;
 int fprintf (int ,char*) ;
 int stdout ;
 struct cs_etm_trace_params* zalloc (int) ;
 int zfree (struct cs_etm_trace_params**) ;

__attribute__((used)) static void cs_etm__dump_event(struct cs_etm_auxtrace *etm,
          struct auxtrace_buffer *buffer)
{
 int ret;
 const char *color = PERF_COLOR_BLUE;
 struct cs_etm_decoder_params d_params;
 struct cs_etm_trace_params *t_params;
 struct cs_etm_decoder *decoder;
 size_t buffer_used = 0;

 fprintf(stdout, "\n");
 color_fprintf(stdout, color,
       ". ... CoreSight ETM Trace data: size %zu bytes\n",
       buffer->size);


 t_params = zalloc(sizeof(*t_params) * etm->num_cpu);

 if (!t_params)
  return;

 if (cs_etm__init_trace_params(t_params, etm))
  goto out_free;


 if (cs_etm__init_decoder_params(&d_params, ((void*)0),
     CS_ETM_OPERATION_PRINT))
  goto out_free;

 decoder = cs_etm_decoder__new(etm->num_cpu, &d_params, t_params);

 if (!decoder)
  goto out_free;
 do {
  size_t consumed;

  ret = cs_etm_decoder__process_data_block(
    decoder, buffer->offset,
    &((u8 *)buffer->data)[buffer_used],
    buffer->size - buffer_used, &consumed);
  if (ret)
   break;

  buffer_used += consumed;
 } while (buffer_used < buffer->size);

 cs_etm_decoder__free(decoder);

out_free:
 zfree(&t_params);
}
