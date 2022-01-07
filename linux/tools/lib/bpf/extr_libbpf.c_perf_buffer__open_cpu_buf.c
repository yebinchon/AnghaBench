
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
struct perf_cpu_buf {int cpu; int map_key; scalar_t__ fd; int * base; struct perf_buffer* pb; } ;
struct perf_buffer {scalar_t__ page_size; scalar_t__ mmap_size; } ;
typedef int msg ;


 int ENOMEM ;
 struct perf_cpu_buf* ERR_PTR (int) ;
 int * MAP_FAILED ;
 int MAP_SHARED ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_FLAG_FD_CLOEXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int STRERR_BUFSIZE ;
 int __NR_perf_event_open ;
 struct perf_cpu_buf* calloc (int,int) ;
 int errno ;
 scalar_t__ ioctl (scalar_t__,int ,int ) ;
 int libbpf_strerror_r (int,char*,int) ;
 int * mmap (int *,scalar_t__,int,int ,scalar_t__,int ) ;
 int perf_buffer__free_cpu_buf (struct perf_buffer*,struct perf_cpu_buf*) ;
 int pr_warning (char*,int,int ) ;
 scalar_t__ syscall (int ,struct perf_event_attr*,int,int,int,int ) ;

__attribute__((used)) static struct perf_cpu_buf *
perf_buffer__open_cpu_buf(struct perf_buffer *pb, struct perf_event_attr *attr,
     int cpu, int map_key)
{
 struct perf_cpu_buf *cpu_buf;
 char msg[STRERR_BUFSIZE];
 int err;

 cpu_buf = calloc(1, sizeof(*cpu_buf));
 if (!cpu_buf)
  return ERR_PTR(-ENOMEM);

 cpu_buf->pb = pb;
 cpu_buf->cpu = cpu;
 cpu_buf->map_key = map_key;

 cpu_buf->fd = syscall(__NR_perf_event_open, attr, -1 , cpu,
         -1, PERF_FLAG_FD_CLOEXEC);
 if (cpu_buf->fd < 0) {
  err = -errno;
  pr_warning("failed to open perf buffer event on cpu #%d: %s\n",
      cpu, libbpf_strerror_r(err, msg, sizeof(msg)));
  goto error;
 }

 cpu_buf->base = mmap(((void*)0), pb->mmap_size + pb->page_size,
        PROT_READ | PROT_WRITE, MAP_SHARED,
        cpu_buf->fd, 0);
 if (cpu_buf->base == MAP_FAILED) {
  cpu_buf->base = ((void*)0);
  err = -errno;
  pr_warning("failed to mmap perf buffer on cpu #%d: %s\n",
      cpu, libbpf_strerror_r(err, msg, sizeof(msg)));
  goto error;
 }

 if (ioctl(cpu_buf->fd, PERF_EVENT_IOC_ENABLE, 0) < 0) {
  err = -errno;
  pr_warning("failed to enable perf buffer event on cpu #%d: %s\n",
      cpu, libbpf_strerror_r(err, msg, sizeof(msg)));
  goto error;
 }

 return cpu_buf;

error:
 perf_buffer__free_cpu_buf(pb, cpu_buf);
 return (struct perf_cpu_buf *)ERR_PTR(err);
}
