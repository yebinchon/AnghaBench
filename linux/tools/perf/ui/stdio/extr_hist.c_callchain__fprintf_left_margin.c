
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static size_t callchain__fprintf_left_margin(FILE *fp, int left_margin)
{
 int i;
 int ret = fprintf(fp, "            ");

 for (i = 0; i < left_margin; i++)
  ret += fprintf(fp, " ");

 return ret;
}
