
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct callchain_node {int dummy; } ;
struct callchain_list {int dummy; } ;
typedef int buf ;
typedef int bf ;
struct TYPE_2__ {scalar_t__ show_branchflag_count; } ;
typedef int FILE ;


 scalar_t__ asprintf (char**,char*,char const*,char*) ;
 scalar_t__ callchain__fprintf_left_margin (int *,int) ;
 char* callchain_list__sym_name (struct callchain_list*,char*,int,int) ;
 int callchain_list_counts__printf_value (struct callchain_list*,int *,char*,int) ;
 scalar_t__ callchain_node__fprintf_value (struct callchain_node*,int *,int ) ;
 scalar_t__ fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int fputs (char const*,int *) ;
 int free (char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static size_t ipchain__fprintf_graph(FILE *fp, struct callchain_node *node,
         struct callchain_list *chain,
         int depth, int depth_mask, int period,
         u64 total_samples, int left_margin)
{
 int i;
 size_t ret = 0;
 char bf[1024], *alloc_str = ((void*)0);
 char buf[64];
 const char *str;

 ret += callchain__fprintf_left_margin(fp, left_margin);
 for (i = 0; i < depth; i++) {
  if (depth_mask & (1 << i))
   ret += fprintf(fp, "|");
  else
   ret += fprintf(fp, " ");
  if (!period && i == depth - 1) {
   ret += fprintf(fp, "--");
   ret += callchain_node__fprintf_value(node, fp, total_samples);
   ret += fprintf(fp, "--");
  } else
   ret += fprintf(fp, "%s", "          ");
 }

 str = callchain_list__sym_name(chain, bf, sizeof(bf), 0);

 if (symbol_conf.show_branchflag_count) {
  callchain_list_counts__printf_value(chain, ((void*)0),
          buf, sizeof(buf));

  if (asprintf(&alloc_str, "%s%s", str, buf) < 0)
   str = "Not enough memory!";
  else
   str = alloc_str;
 }

 fputs(str, fp);
 fputc('\n', fp);
 free(alloc_str);

 return ret;
}
