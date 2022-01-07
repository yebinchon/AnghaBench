
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t callchain__fprintf_left_margin (int *,int) ;
 scalar_t__ fprintf (int *,char*) ;

__attribute__((used)) static size_t ipchain__fprintf_graph_line(FILE *fp, int depth, int depth_mask,
       int left_margin)
{
 int i;
 size_t ret = callchain__fprintf_left_margin(fp, left_margin);

 for (i = 0; i < depth; i++)
  if (depth_mask & (1 << i))
   ret += fprintf(fp, "|          ");
  else
   ret += fprintf(fp, "           ");

 ret += fprintf(fp, "\n");

 return ret;
}
