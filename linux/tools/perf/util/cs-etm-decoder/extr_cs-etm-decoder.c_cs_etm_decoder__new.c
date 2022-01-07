
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_decoder_params {scalar_t__ frame_aligned; scalar_t__ hsyncs; scalar_t__ fsyncs; scalar_t__ formatted; int data; } ;
struct cs_etm_decoder {scalar_t__ dcd_tree; int prev_return; int data; } ;
typedef int ocsd_dcd_tree_src_t ;


 int OCSD_DFRMTR_FRAME_MEM_ALIGN ;
 int OCSD_DFRMTR_HAS_FSYNCS ;
 int OCSD_DFRMTR_HAS_HSYNCS ;
 int OCSD_DFRMTR_RESET_ON_4X_FSYNC ;
 int OCSD_RESP_CONT ;
 int OCSD_TRC_SRC_FRAME_FORMATTED ;
 int OCSD_TRC_SRC_SINGLE ;
 int cs_etm_decoder__create_etm_decoder (struct cs_etm_decoder_params*,struct cs_etm_trace_params*,struct cs_etm_decoder*) ;
 int cs_etm_decoder__free (struct cs_etm_decoder*) ;
 int cs_etm_decoder__init_def_logger_printing (struct cs_etm_decoder_params*,struct cs_etm_decoder*) ;
 int cs_etm_decoder__init_raw_frame_logging (struct cs_etm_decoder_params*,struct cs_etm_decoder*) ;
 scalar_t__ ocsd_create_dcd_tree (int ,int ) ;
 struct cs_etm_decoder* zalloc (int) ;

struct cs_etm_decoder *
cs_etm_decoder__new(int num_cpu, struct cs_etm_decoder_params *d_params,
      struct cs_etm_trace_params t_params[])
{
 struct cs_etm_decoder *decoder;
 ocsd_dcd_tree_src_t format;
 u32 flags;
 int i, ret;

 if ((!t_params) || (!d_params))
  return ((void*)0);

 decoder = zalloc(sizeof(*decoder));

 if (!decoder)
  return ((void*)0);

 decoder->data = d_params->data;
 decoder->prev_return = OCSD_RESP_CONT;
 format = (d_params->formatted ? OCSD_TRC_SRC_FRAME_FORMATTED :
      OCSD_TRC_SRC_SINGLE);
 flags = 0;
 flags |= (d_params->fsyncs ? OCSD_DFRMTR_HAS_FSYNCS : 0);
 flags |= (d_params->hsyncs ? OCSD_DFRMTR_HAS_HSYNCS : 0);
 flags |= (d_params->frame_aligned ? OCSD_DFRMTR_FRAME_MEM_ALIGN : 0);





 flags |= OCSD_DFRMTR_RESET_ON_4X_FSYNC;


 decoder->dcd_tree = ocsd_create_dcd_tree(format, flags);

 if (decoder->dcd_tree == 0)
  goto err_free_decoder;


 ret = cs_etm_decoder__init_def_logger_printing(d_params, decoder);
 if (ret != 0)
  goto err_free_decoder;


 cs_etm_decoder__init_raw_frame_logging(d_params, decoder);

 for (i = 0; i < num_cpu; i++) {
  ret = cs_etm_decoder__create_etm_decoder(d_params,
        &t_params[i],
        decoder);
  if (ret != 0)
   goto err_free_decoder;
 }

 return decoder;

err_free_decoder:
 cs_etm_decoder__free(decoder);
 return ((void*)0);
}
