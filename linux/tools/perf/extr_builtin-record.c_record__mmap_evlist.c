
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct record_opts {scalar_t__ affinity; int mmap_pages; int auxtrace_mmap_pages; int comp_level; int mmap_flush; int nr_cblocks; int auxtrace_snapshot_mode; } ;
struct record {struct record_opts opts; } ;
struct evlist {int dummy; } ;
typedef int msg ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ PERF_AFFINITY_SYS ;
 int cpu__setup_cpunode_map () ;
 int errno ;
 scalar_t__ evlist__mmap_ex (struct evlist*,int,int ,int ,int ,scalar_t__,int ,int ) ;
 int pr_err (char*,int,int ) ;
 int str_error_r (int,char*,int) ;

__attribute__((used)) static int record__mmap_evlist(struct record *rec,
          struct evlist *evlist)
{
 struct record_opts *opts = &rec->opts;
 char msg[512];

 if (opts->affinity != PERF_AFFINITY_SYS)
  cpu__setup_cpunode_map();

 if (evlist__mmap_ex(evlist, opts->mmap_pages,
     opts->auxtrace_mmap_pages,
     opts->auxtrace_snapshot_mode,
     opts->nr_cblocks, opts->affinity,
     opts->mmap_flush, opts->comp_level) < 0) {
  if (errno == EPERM) {
   pr_err("Permission error mapping pages.\n"
          "Consider increasing "
          "/proc/sys/kernel/perf_event_mlock_kb,\n"
          "or try again with a smaller value of -m/--mmap_pages.\n"
          "(current value: %u,%u)\n",
          opts->mmap_pages, opts->auxtrace_mmap_pages);
   return -errno;
  } else {
   pr_err("failed to mmap with %d (%s)\n", errno,
    str_error_r(errno, msg, sizeof(msg)));
   if (errno)
    return -errno;
   else
    return -EINVAL;
  }
 }
 return 0;
}
