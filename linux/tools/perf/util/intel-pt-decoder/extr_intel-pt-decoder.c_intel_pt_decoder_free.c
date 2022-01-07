
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int stack; } ;


 int free (struct intel_pt_decoder*) ;
 int intel_pt_free_stack (int *) ;

void intel_pt_decoder_free(struct intel_pt_decoder *decoder)
{
 intel_pt_free_stack(&decoder->stack);
 free(decoder);
}
