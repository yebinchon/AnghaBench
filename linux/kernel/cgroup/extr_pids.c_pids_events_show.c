
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pids_cgroup {int events_limit; } ;
typedef int s64 ;


 scalar_t__ atomic64_read (int *) ;
 struct pids_cgroup* css_pids (int ) ;
 int seq_css (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int pids_events_show(struct seq_file *sf, void *v)
{
 struct pids_cgroup *pids = css_pids(seq_css(sf));

 seq_printf(sf, "max %lld\n", (s64)atomic64_read(&pids->events_limit));
 return 0;
}
