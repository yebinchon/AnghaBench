
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
struct bpf_link {int dummy; } ;
typedef int pid_t ;
typedef int errmsg ;


 struct bpf_link* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct bpf_link*) ;
 int PTR_ERR (struct bpf_link*) ;
 int STRERR_BUFSIZE ;
 struct bpf_link* bpf_program__attach_perf_event (struct bpf_program*,int) ;
 int bpf_program__title (struct bpf_program*,int) ;
 int close (int) ;
 int libbpf_strerror_r (int,char*,int) ;
 int perf_event_open_probe (int,int,char const*,size_t,int ) ;
 int pr_warning (char*,int ,char*,char const*,size_t,int ) ;

struct bpf_link *bpf_program__attach_uprobe(struct bpf_program *prog,
         bool retprobe, pid_t pid,
         const char *binary_path,
         size_t func_offset)
{
 char errmsg[STRERR_BUFSIZE];
 struct bpf_link *link;
 int pfd, err;

 pfd = perf_event_open_probe(1 , retprobe,
        binary_path, func_offset, pid);
 if (pfd < 0) {
  pr_warning("program '%s': failed to create %s '%s:0x%zx' perf event: %s\n",
      bpf_program__title(prog, 0),
      retprobe ? "uretprobe" : "uprobe",
      binary_path, func_offset,
      libbpf_strerror_r(pfd, errmsg, sizeof(errmsg)));
  return ERR_PTR(pfd);
 }
 link = bpf_program__attach_perf_event(prog, pfd);
 if (IS_ERR(link)) {
  close(pfd);
  err = PTR_ERR(link);
  pr_warning("program '%s': failed to attach to %s '%s:0x%zx': %s\n",
      bpf_program__title(prog, 0),
      retprobe ? "uretprobe" : "uprobe",
      binary_path, func_offset,
      libbpf_strerror_r(err, errmsg, sizeof(errmsg)));
  return link;
 }
 return link;
}
