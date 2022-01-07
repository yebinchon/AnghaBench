
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int dummy; } ;
struct diff_hpp_fmt {int fmt; } ;
struct data__file {int dummy; } ;


 struct data__file* fmt_to_data_file (int *) ;
 struct hist_entry* get_pair_data (struct hist_entry*,struct data__file*) ;

__attribute__((used)) static struct hist_entry*
get_pair_fmt(struct hist_entry *he, struct diff_hpp_fmt *dfmt)
{
 struct data__file *d = fmt_to_data_file(&dfmt->fmt);

 return get_pair_data(he, d);
}
