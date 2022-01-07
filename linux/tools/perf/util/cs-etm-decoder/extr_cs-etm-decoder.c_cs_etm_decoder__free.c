
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_decoder {int * dcd_tree; } ;


 int free (struct cs_etm_decoder*) ;
 int ocsd_destroy_dcd_tree (int *) ;

void cs_etm_decoder__free(struct cs_etm_decoder *decoder)
{
 if (!decoder)
  return;

 ocsd_destroy_dcd_tree(decoder->dcd_tree);
 decoder->dcd_tree = ((void*)0);
 free(decoder);
}
