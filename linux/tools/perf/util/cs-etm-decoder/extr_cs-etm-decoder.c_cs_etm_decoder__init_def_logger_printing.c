
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_decoder_params {int * packet_printer; } ;
struct cs_etm_decoder {int dcd_tree; int * packet_printer; } ;


 int C_API_MSGLOGOUT_FLG_NONE ;
 int OCSD_ERR_SEV_ERROR ;
 int cs_etm_decoder__print_str_cb ;
 int ocsd_def_errlog_config_output (int ,int *) ;
 int ocsd_def_errlog_init (int ,int) ;
 int ocsd_def_errlog_set_strprint_cb (int ,void*,int ) ;

__attribute__((used)) static int
cs_etm_decoder__init_def_logger_printing(struct cs_etm_decoder_params *d_params,
      struct cs_etm_decoder *decoder)
{
 int ret = 0;

 if (d_params->packet_printer == ((void*)0))
  return -1;

 decoder->packet_printer = d_params->packet_printer;





 ret = ocsd_def_errlog_init(OCSD_ERR_SEV_ERROR, 1);
 if (ret != 0)
  return -1;


 ret = ocsd_def_errlog_config_output(C_API_MSGLOGOUT_FLG_NONE, ((void*)0));
 if (ret != 0)
  return -1;





 ret = ocsd_def_errlog_set_strprint_cb(decoder->dcd_tree,
           (void *)decoder,
           cs_etm_decoder__print_str_cb);
 if (ret != 0)
  ret = -1;

 return 0;
}
