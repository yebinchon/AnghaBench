
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void sym_hist ;
struct annotated_source {int sizeof_sym_hist; scalar_t__ histograms; } ;



__attribute__((used)) static inline struct sym_hist *annotated_source__histogram(struct annotated_source *src, int idx)
{
 return ((void *)src->histograms) + (src->sizeof_sym_hist * idx);
}
