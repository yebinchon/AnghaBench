
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct switch_output {int size; } ;
struct TYPE_2__ {int mmap_pages; } ;
struct record {struct switch_output switch_output; TYPE_1__ opts; } ;
typedef int buf ;


 int evlist__mmap_size (int ) ;
 int pr_warning (char*,char*) ;
 int unit_number__scnprintf (char*,int,int) ;

__attribute__((used)) static void switch_output_size_warn(struct record *rec)
{
 u64 wakeup_size = evlist__mmap_size(rec->opts.mmap_pages);
 struct switch_output *s = &rec->switch_output;

 wakeup_size /= 2;

 if (s->size < wakeup_size) {
  char buf[100];

  unit_number__scnprintf(buf, sizeof(buf), wakeup_size);
  pr_warning("WARNING: switch-output data size lower than "
      "wakeup kernel buffer size (%s) "
      "expect bigger perf.data sizes\n", buf);
 }
}
