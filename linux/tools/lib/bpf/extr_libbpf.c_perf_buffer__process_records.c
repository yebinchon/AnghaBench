
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_buf {int buf_size; int buf; int base; } ;
struct perf_buffer {int page_size; int mmap_size; } ;
typedef enum bpf_perf_event_ret { ____Placeholder_bpf_perf_event_ret } bpf_perf_event_ret ;


 int LIBBPF_PERF_EVENT_CONT ;
 int bpf_perf_event_read_simple (int ,int ,int ,int *,int *,int ,struct perf_cpu_buf*) ;
 int perf_buffer__process_record ;

__attribute__((used)) static int perf_buffer__process_records(struct perf_buffer *pb,
     struct perf_cpu_buf *cpu_buf)
{
 enum bpf_perf_event_ret ret;

 ret = bpf_perf_event_read_simple(cpu_buf->base, pb->mmap_size,
      pb->page_size, &cpu_buf->buf,
      &cpu_buf->buf_size,
      perf_buffer__process_record, cpu_buf);
 if (ret != LIBBPF_PERF_EVENT_CONT)
  return ret;
 return 0;
}
