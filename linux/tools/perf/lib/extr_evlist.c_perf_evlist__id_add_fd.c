
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int read_format; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;
typedef int read_data ;


 scalar_t__ ENOTTY ;
 int PERF_EVENT_IOC_ID ;
 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_ID ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 scalar_t__ errno ;
 int ioctl (int,int ,int *) ;
 int perf_evlist__id_add (struct perf_evlist*,struct perf_evsel*,int,int,int ) ;
 int perf_evlist__read_format (struct perf_evlist*) ;
 int read (int,int **,int) ;

int perf_evlist__id_add_fd(struct perf_evlist *evlist,
      struct perf_evsel *evsel,
      int cpu, int thread, int fd)
{
 u64 read_data[4] = { 0, };
 int id_idx = 1;
 u64 id;
 int ret;

 ret = ioctl(fd, PERF_EVENT_IOC_ID, &id);
 if (!ret)
  goto add;

 if (errno != ENOTTY)
  return -1;







 if (perf_evlist__read_format(evlist) & PERF_FORMAT_GROUP)
  return -1;

 if (!(evsel->attr.read_format & PERF_FORMAT_ID) ||
     read(fd, &read_data, sizeof(read_data)) == -1)
  return -1;

 if (evsel->attr.read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
  ++id_idx;
 if (evsel->attr.read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
  ++id_idx;

 id = read_data[id_idx];

add:
 perf_evlist__id_add(evlist, evsel, cpu, thread, id);
 return 0;
}
