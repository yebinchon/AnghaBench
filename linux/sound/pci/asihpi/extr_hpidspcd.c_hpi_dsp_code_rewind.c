
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsp_code {int word_count; } ;
struct code_header {int dummy; } ;



void hpi_dsp_code_rewind(struct dsp_code *dsp_code)
{

 dsp_code->word_count = sizeof(struct code_header) / sizeof(u32);
}
