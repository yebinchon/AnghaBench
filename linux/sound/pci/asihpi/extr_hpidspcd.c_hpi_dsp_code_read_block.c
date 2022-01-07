
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dsp_code {scalar_t__ word_count; scalar_t__ block_length; TYPE_2__* pvt; } ;
struct TYPE_4__ {TYPE_1__* firmware; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 short HPI_ERROR_DSP_FILE_FORMAT ;

short hpi_dsp_code_read_block(size_t words_requested,
 struct dsp_code *dsp_code, u32 **ppblock)
{
 if (dsp_code->word_count + words_requested > dsp_code->block_length)
  return HPI_ERROR_DSP_FILE_FORMAT;

 *ppblock =
  ((u32 *)(dsp_code->pvt->firmware->data)) +
  dsp_code->word_count;
 dsp_code->word_count += words_requested;
 return 0;
}
