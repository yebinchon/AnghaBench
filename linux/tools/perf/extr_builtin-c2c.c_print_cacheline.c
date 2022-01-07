
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_list {int dummy; } ;
struct perf_hpp {char* buf; int size; } ;
struct hist_entry {int dummy; } ;
struct c2c_hists {int hists; } ;
typedef int FILE ;


 int __hist_entry__snprintf (struct hist_entry*,struct perf_hpp*,struct perf_hpp_list*) ;
 int fprintf (int *,char*,...) ;
 int hists__fprintf (int *,int,int ,int ,int ,int *,int) ;
 int hists__fprintf_headers (int *,int *) ;

__attribute__((used)) static void print_cacheline(struct c2c_hists *c2c_hists,
       struct hist_entry *he_cl,
       struct perf_hpp_list *hpp_list,
       FILE *out)
{
 char bf[1000];
 struct perf_hpp hpp = {
  .buf = bf,
  .size = 1000,
 };
 static bool once;

 if (!once) {
  hists__fprintf_headers(&c2c_hists->hists, out);
  once = 1;
 } else {
  fprintf(out, "\n");
 }

 fprintf(out, "  -------------------------------------------------------------\n");
 __hist_entry__snprintf(he_cl, &hpp, hpp_list);
 fprintf(out, "%s\n", bf);
 fprintf(out, "  -------------------------------------------------------------\n");

 hists__fprintf(&c2c_hists->hists, 0, 0, 0, 0, out, 0);
}
