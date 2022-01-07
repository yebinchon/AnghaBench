
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_compr {int * buf; } ;



__attribute__((used)) static inline int wm_adsp_compr_attached(struct wm_adsp_compr *compr)
{
 return compr->buf != ((void*)0);
}
