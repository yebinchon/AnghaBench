
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hist_entry {int dummy; } ;
struct sym_hist {int dummy; } ;
struct annotated_source {size_t sizeof_sym_hist; int nr_histograms; int histograms; } ;


 int SIZE_MAX ;
 int calloc (int,size_t) ;

__attribute__((used)) static int annotated_source__alloc_histograms(struct annotated_source *src,
           size_t size, int nr_hists)
{
 size_t sizeof_sym_hist;
 if (size == 0)
  size = 1;


 if (size > (SIZE_MAX - sizeof(struct sym_hist)) / sizeof(struct sym_hist_entry))
  return -1;

 sizeof_sym_hist = (sizeof(struct sym_hist) + size * sizeof(struct sym_hist_entry));


 if (sizeof_sym_hist > SIZE_MAX / nr_hists)
  return -1;

 src->sizeof_sym_hist = sizeof_sym_hist;
 src->nr_histograms = nr_hists;
 src->histograms = calloc(nr_hists, sizeof_sym_hist) ;
 return src->histograms ? 0 : -1;
}
