
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_pipe_desc {int * pages; } ;


 int __free_page (int ) ;

__attribute__((used)) static void tracing_spd_release_pipe(struct splice_pipe_desc *spd,
         unsigned int idx)
{
 __free_page(spd->pages[idx]);
}
