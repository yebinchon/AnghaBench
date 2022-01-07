
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wm_adsp {int dummy; } ;


 int wm_adsp_read_data_block (struct wm_adsp*,int,unsigned int,int,int *) ;

__attribute__((used)) static inline int wm_adsp_read_data_word(struct wm_adsp *dsp, int mem_type,
      unsigned int mem_addr, u32 *data)
{
 return wm_adsp_read_data_block(dsp, mem_type, mem_addr, 1, data);
}
