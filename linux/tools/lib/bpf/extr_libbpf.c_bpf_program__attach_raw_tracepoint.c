
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
 int STRERR_BUFSIZE ;
 int bpf_link__destroy_fd ;
 int bpf_program__fd (struct bpf_program*) ;
 int bpf_program__title (struct bpf_program*,int) ;
 int bpf_raw_tracepoint_open (char const*,int) ;
 int errno ;
 int free (struct bpf_link_fd*) ;
 int libbpf_strerror_r (int,char*,int) ;
 struct bpf_link_fd* malloc (int) ;
 int pr_warning (char*,int ,...) ;

struct bpf_link *bpf_program__attach_raw_tracepoint(struct bpf_program *prog,
          const char *tp_name)
{
 char errmsg[STRERR_BUFSIZE];
 struct bpf_link_fd *link;
 int prog_fd, pfd;

 prog_fd = bpf_program__fd(prog);
 if (prog_fd < 0) {
  pr_warning("program '%s': can't attach before loaded\n",
      bpf_program__title(prog, 0));
  return ERR_PTR(-EINVAL);
 }

 link = malloc(sizeof(*link));
 if (!link)
  return ERR_PTR(-ENOMEM);
 link->link.destroy = &bpf_link__destroy_fd;

 pfd = bpf_raw_tracepoint_open(tp_name, prog_fd);
 if (pfd < 0) {
  pfd = -errno;
  free(link);
  pr_warning("program '%s': failed to attach to raw tracepoint '%s': %s\n",
      bpf_program__title(prog, 0), tp_name,
      libbpf_strerror_r(pfd, errmsg, sizeof(errmsg)));
  return ERR_PTR(pfd);
 }
 link->fd = pfd;
 return (struct bpf_link *)link;
}
