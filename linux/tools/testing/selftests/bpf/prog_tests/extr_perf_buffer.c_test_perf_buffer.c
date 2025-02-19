
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_buffer_opts {int * ctx; int sample_cb; } ;
struct perf_buffer {int dummy; } ;
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef struct perf_buffer bpf_link ;
typedef int cpu_set_t ;
typedef int cpu_set ;


 int BPF_PROG_TYPE_KPROBE ;
 scalar_t__ CHECK (int,char*,char*,...) ;
 int CPU_COUNT (int *) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int IS_ERR (struct perf_buffer*) ;
 int PTR_ERR (struct perf_buffer*) ;
 int SYS_NANOSLEEP_KPROBE_NAME ;
 int bpf_link__destroy (struct perf_buffer*) ;
 int bpf_map__fd (struct bpf_map*) ;
 int bpf_object__close (struct bpf_object*) ;
 struct bpf_map* bpf_object__find_map_by_name (struct bpf_object*,char*) ;
 struct bpf_program* bpf_object__find_program_by_title (struct bpf_object*,char const*) ;
 int bpf_prog_load (char const*,int ,struct bpf_object**,int*) ;
 struct perf_buffer* bpf_program__attach_kprobe (struct bpf_program*,int,int ) ;
 int errno ;
 int libbpf_num_possible_cpus () ;
 int on_sample ;
 int perf_buffer__free (struct perf_buffer*) ;
 struct perf_buffer* perf_buffer__new (int ,int,struct perf_buffer_opts*) ;
 int perf_buffer__poll (struct perf_buffer*,int) ;
 int pthread_self () ;
 int pthread_setaffinity_np (int ,int,int *) ;
 int usleep (int) ;

void test_perf_buffer(void)
{
 int err, prog_fd, nr_cpus, i, duration = 0;
 const char *prog_name = "kprobe/sys_nanosleep";
 const char *file = "./test_perf_buffer.o";
 struct perf_buffer_opts pb_opts = {};
 struct bpf_map *perf_buf_map;
 cpu_set_t cpu_set, cpu_seen;
 struct bpf_program *prog;
 struct bpf_object *obj;
 struct perf_buffer *pb;
 struct bpf_link *link;

 nr_cpus = libbpf_num_possible_cpus();
 if (CHECK(nr_cpus < 0, "nr_cpus", "err %d\n", nr_cpus))
  return;


 err = bpf_prog_load(file, BPF_PROG_TYPE_KPROBE, &obj, &prog_fd);
 if (CHECK(err, "obj_load", "err %d errno %d\n", err, errno))
  return;

 prog = bpf_object__find_program_by_title(obj, prog_name);
 if (CHECK(!prog, "find_probe", "prog '%s' not found\n", prog_name))
  goto out_close;


 perf_buf_map = bpf_object__find_map_by_name(obj, "perf_buf_map");
 if (CHECK(!perf_buf_map, "find_perf_buf_map", "not found\n"))
  goto out_close;


 link = bpf_program__attach_kprobe(prog, 0 ,
       SYS_NANOSLEEP_KPROBE_NAME);
 if (CHECK(IS_ERR(link), "attach_kprobe", "err %ld\n", PTR_ERR(link)))
  goto out_close;


 pb_opts.sample_cb = on_sample;
 pb_opts.ctx = &cpu_seen;
 pb = perf_buffer__new(bpf_map__fd(perf_buf_map), 1, &pb_opts);
 if (CHECK(IS_ERR(pb), "perf_buf__new", "err %ld\n", PTR_ERR(pb)))
  goto out_detach;


 CPU_ZERO(&cpu_seen);
 for (i = 0; i < nr_cpus; i++) {
  CPU_ZERO(&cpu_set);
  CPU_SET(i, &cpu_set);

  err = pthread_setaffinity_np(pthread_self(), sizeof(cpu_set),
          &cpu_set);
  if (err && CHECK(err, "set_affinity", "cpu #%d, err %d\n",
     i, err))
   goto out_detach;

  usleep(1);
 }


 err = perf_buffer__poll(pb, 100);
 if (CHECK(err < 0, "perf_buffer__poll", "err %d\n", err))
  goto out_free_pb;

 if (CHECK(CPU_COUNT(&cpu_seen) != nr_cpus, "seen_cpu_cnt",
    "expect %d, seen %d\n", nr_cpus, CPU_COUNT(&cpu_seen)))
  goto out_free_pb;

out_free_pb:
 perf_buffer__free(pb);
out_detach:
 bpf_link__destroy(link);
out_close:
 bpf_object__close(obj);
}
