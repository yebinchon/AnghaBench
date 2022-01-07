
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int fragment_size; } ;
struct wm_adsp_compr {TYPE_1__ size; } ;


 unsigned int WM_ADSP_DATA_WORD_SIZE ;

__attribute__((used)) static inline unsigned int wm_adsp_compr_frag_words(struct wm_adsp_compr *compr)
{
 return compr->size.fragment_size / WM_ADSP_DATA_WORD_SIZE;
}
