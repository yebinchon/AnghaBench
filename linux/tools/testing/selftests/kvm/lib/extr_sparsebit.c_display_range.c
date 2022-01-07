
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sparsebit_idx_t ;
typedef int FILE ;


 size_t fprintf (int *,char*,int ,int ) ;
 size_t snprintf (int *,int ,char*,int ,int ) ;

__attribute__((used)) static size_t display_range(FILE *stream, sparsebit_idx_t low,
 sparsebit_idx_t high, bool prepend_comma_space)
{
 char *fmt_str;
 size_t sz;


 if (low == high)
  fmt_str = prepend_comma_space ? ", 0x%lx" : "0x%lx";
 else
  fmt_str = prepend_comma_space ? ", 0x%lx:0x%lx" : "0x%lx:0x%lx";





 if (!stream)
  sz = snprintf(((void*)0), 0, fmt_str, low, high);
 else
  sz = fprintf(stream, fmt_str, low, high);

 return sz;
}
