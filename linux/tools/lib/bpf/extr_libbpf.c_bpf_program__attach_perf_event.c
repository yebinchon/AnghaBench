
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_program {int dummy; } ;
struct TYPE_2__ {int * destroy; } ;
struct bpf_link_fd {int fd; TYPE_1__ link; } ;
struct bpf_link {int dummy; } ;
typedef int errmsg ;


 int EINVAL ;
 int ENOMEM ;
 struct bpf_link* ERR_PTR (int) ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_SET_BPF ;
 int STRERR_BUFSIZE ;
 int bpf_link__destroy_perf_event ;
 int bpf_program__fd (struct bpf_program*) ;
 int bpf_program__title (struct bpf_program*,int) ;
 int errno ;
 int free (struct bpf_link_fd*) ;
 scalar_t__ ioctl (int,int ,int) ;
 int libbpf_strerror_r (int,char*,int) ;
 struct bpf_link_fd* malloc (int) ;
 int pr_warning (char*,int ,...) ;

struct bpf_link *bpf_program__attach_perf_event(struct bpf_program *prog,
      int pfd)
{
 char errmsg[STRERR_BUFSIZE];
 struct bpf_link_fd *link;
 int prog_fd, err;

 if (pfd < 0) {
  pr_warning("program '%s': invalid perf event FD %d\n",
      bpf_program__title(prog, 0), pfd);
  return ERR_PTR(-EINVAL);
 }
 prog_fd = bpf_program__fd(prog);
 if (prog_fd < 0) {
  pr_warning("program '%s': can't attach BPF program w/o FD (did you load it?)\n",
      bpf_program__title(prog, 0));
  return ERR_PTR(-EINVAL);
 }

 link = malloc(sizeof(*link));
 if (!link)
  return ERR_PTR(-ENOMEM);
 link->link.destroy = &bpf_link__destroy_perf_event;
 link->fd = pfd;

 if (ioctl(pfd, PERF_EVENT_IOC_SET_BPF, prog_fd) < 0) {
  err = -errno;
  free(link);
  pr_warning("program '%s': failed to attach to pfd %d: %s\n",
      bpf_program__title(prog, 0), pfd,
      libbpf_strerror_r(err, errmsg, sizeof(errmsg)));
  return ERR_PTR(err);
 }
 if (ioctl(pfd, PERF_EVENT_IOC_ENABLE, 0) < 0) {
  err = -errno;
  free(link);
  pr_warning("program '%s': failed to enable pfd %d: %s\n",
      bpf_program__title(prog, 0), pfd,
      libbpf_strerror_r(err, errmsg, sizeof(errmsg)));
  return ERR_PTR(err);
 }
 return (struct bpf_link *)link;
}
