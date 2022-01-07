
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_page (unsigned long) ;
 int kfree (void**) ;

__attribute__((used)) static void dlm_free_pagevec(void **vec, int pages)
{
 while (pages--)
  free_page((unsigned long)vec[pages]);
 kfree(vec);
}
