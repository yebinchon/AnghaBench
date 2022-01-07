
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void wm_adsp_remove_padding(u32 *buf, int nwords, int data_word_size)
{
 u8 *pack_in = (u8 *)buf;
 u8 *pack_out = (u8 *)buf;
 int i, j;


 for (i = 0; i < nwords; i++) {
  for (j = 0; j < data_word_size; j++)
   *pack_out++ = *pack_in++;

  pack_in += sizeof(*buf) - data_word_size;
 }
}
