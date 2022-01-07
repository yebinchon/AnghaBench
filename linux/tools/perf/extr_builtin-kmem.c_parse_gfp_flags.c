
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int * buffer; } ;
struct tep_record {int size; int data; int cpu; } ;
struct perf_sample {int raw_size; int raw_data; int cpu; } ;
struct gfp_flag {unsigned int flags; int compact_str; int human_readable; } ;
struct evsel {TYPE_1__* tp_format; } ;
struct TYPE_2__ {int tep; } ;


 int ENOMEM ;
 int TEP_PRINT_INFO ;
 scalar_t__ bsearch (struct gfp_flag*,struct gfp_flag*,int,int,int ) ;
 int compact_gfp_flags (char*) ;
 int gfpcmp ;
 struct gfp_flag* gfps ;
 int nr_gfps ;
 int qsort (struct gfp_flag*,int,int,int ) ;
 struct gfp_flag* realloc (struct gfp_flag*,int) ;
 int strdup (char*) ;
 int strncmp (char*,char*,int) ;
 char* strtok_r (int *,char*,char**) ;
 int tep_print_event (int ,struct trace_seq*,struct tep_record*,char*,int ) ;
 int trace_seq_destroy (struct trace_seq*) ;
 int trace_seq_init (struct trace_seq*) ;

__attribute__((used)) static int parse_gfp_flags(struct evsel *evsel, struct perf_sample *sample,
      unsigned int gfp_flags)
{
 struct tep_record record = {
  .cpu = sample->cpu,
  .data = sample->raw_data,
  .size = sample->raw_size,
 };
 struct trace_seq seq;
 char *str, *pos = ((void*)0);

 if (nr_gfps) {
  struct gfp_flag key = {
   .flags = gfp_flags,
  };

  if (bsearch(&key, gfps, nr_gfps, sizeof(*gfps), gfpcmp))
   return 0;
 }

 trace_seq_init(&seq);
 tep_print_event(evsel->tp_format->tep,
   &seq, &record, "%s", TEP_PRINT_INFO);

 str = strtok_r(seq.buffer, " ", &pos);
 while (str) {
  if (!strncmp(str, "gfp_flags=", 10)) {
   struct gfp_flag *new;

   new = realloc(gfps, (nr_gfps + 1) * sizeof(*gfps));
   if (new == ((void*)0))
    return -ENOMEM;

   gfps = new;
   new += nr_gfps++;

   new->flags = gfp_flags;
   new->human_readable = strdup(str + 10);
   new->compact_str = compact_gfp_flags(str + 10);
   if (!new->human_readable || !new->compact_str)
    return -ENOMEM;

   qsort(gfps, nr_gfps, sizeof(*gfps), gfpcmp);
  }

  str = strtok_r(((void*)0), " ", &pos);
 }

 trace_seq_destroy(&seq);
 return 0;
}
