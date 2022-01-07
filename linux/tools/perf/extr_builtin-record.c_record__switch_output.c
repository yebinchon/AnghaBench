
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int timestamp ;
struct TYPE_8__ {int target; } ;
struct TYPE_7__ {int num_files; int cur_file; char** filenames; } ;
struct perf_data {char* path; } ;
struct record {TYPE_4__ opts; TYPE_3__ switch_output; TYPE_2__* session; scalar_t__ bytes_written; scalar_t__ samples; struct perf_data data; } ;
struct TYPE_5__ {scalar_t__ data_size; int data_offset; } ;
struct TYPE_6__ {TYPE_1__ header; } ;


 int EINVAL ;
 int fetch_current_timestamp (char*,int) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 int perf_data__switch (struct perf_data*,char*,int ,int,char**) ;
 int pr_err (char*) ;
 int quiet ;
 int record__aio_mmap_read_sync (struct record*) ;
 int record__finish_output (struct record*) ;
 int record__synthesize (struct record*,int) ;
 int record__synthesize_workload (struct record*,int) ;
 int remove (char*) ;
 int stderr ;
 scalar_t__ target__none (int *) ;
 int zfree (char**) ;

__attribute__((used)) static int
record__switch_output(struct record *rec, bool at_exit)
{
 struct perf_data *data = &rec->data;
 int fd, err;
 char *new_filename;


 char timestamp[] = "InvalidTimestamp";

 record__aio_mmap_read_sync(rec);

 record__synthesize(rec, 1);
 if (target__none(&rec->opts.target))
  record__synthesize_workload(rec, 1);

 rec->samples = 0;
 record__finish_output(rec);
 err = fetch_current_timestamp(timestamp, sizeof(timestamp));
 if (err) {
  pr_err("Failed to get current timestamp\n");
  return -EINVAL;
 }

 fd = perf_data__switch(data, timestamp,
        rec->session->header.data_offset,
        at_exit, &new_filename);
 if (fd >= 0 && !at_exit) {
  rec->bytes_written = 0;
  rec->session->header.data_size = 0;
 }

 if (!quiet)
  fprintf(stderr, "[ perf record: Dump %s.%s ]\n",
   data->path, timestamp);

 if (rec->switch_output.num_files) {
  int n = rec->switch_output.cur_file + 1;

  if (n >= rec->switch_output.num_files)
   n = 0;
  rec->switch_output.cur_file = n;
  if (rec->switch_output.filenames[n]) {
   remove(rec->switch_output.filenames[n]);
   zfree(&rec->switch_output.filenames[n]);
  }
  rec->switch_output.filenames[n] = new_filename;
 } else {
  free(new_filename);
 }


 if (!at_exit) {
  record__synthesize(rec, 0);
  if (target__none(&rec->opts.target))
   record__synthesize_workload(rec, 0);
 }
 return fd;
}
