
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_chunk {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static int pcpu_populate_chunk(struct pcpu_chunk *chunk,
          int page_start, int page_end, gfp_t gfp)
{
 return 0;
}
