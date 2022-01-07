
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
struct bpf_link {int dummy; } ;
typedef int errmsg ;


 struct bpf_link* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct bpf_link*) ;
 int PTR_ERR (struct bpf_link*) ;
 int STRERR_BUFSIZE ;
 struct bpf_link* bpf_program__attach_perf_event (struct bpf_program*,int) ;
 int bpf_program__title (struct bpf_program*,int) ;
 int close (int) ;
 int libbpf_strerror_r (int,char*,int) ;
 int perf_event_open_probe (int,int,char const*,int ,int) ;
 int pr_warning (char*,int ,char*,char const*,int ) ;

struct bpf_link *bpf_program__attach_kprobe(struct bpf_program *prog,
         bool retprobe,
         const char *func_name)
{
 char errmsg[STRERR_BUFSIZE];
 struct bpf_link *link;
 int pfd, err;

 pfd = perf_event_open_probe(0 , retprobe, func_name,
        0 , -1 );
 if (pfd < 0) {
  pr_warning("program '%s': failed to create %s '%s' perf event: %s\n",
      bpf_program__title(prog, 0),
      retprobe ? "kretprobe" : "kprobe", func_name,
      libbpf_strerror_r(pfd, errmsg, sizeof(errmsg)));
  return ERR_PTR(pfd);
 }
 link = bpf_program__attach_perf_event(prog, pfd);
 if (IS_ERR(link)) {
  close(pfd);
  err = PTR_ERR(link);
  pr_warning("program '%s': failed to attach to %s '%s': %s\n",
      bpf_program__title(prog, 0),
      retprobe ? "kretprobe" : "kprobe", func_name,
      libbpf_strerror_r(err, errmsg, sizeof(errmsg)));
  return link;
 }
 return link;
}
