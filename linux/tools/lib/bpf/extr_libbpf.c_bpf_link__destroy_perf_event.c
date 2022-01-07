
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_link_fd {int fd; } ;
struct bpf_link {int dummy; } ;


 int PERF_EVENT_IOC_DISABLE ;
 int close (int ) ;
 int errno ;
 int ioctl (int ,int ,int ) ;

__attribute__((used)) static int bpf_link__destroy_perf_event(struct bpf_link *link)
{
 struct bpf_link_fd *l = (void *)link;
 int err;

 err = ioctl(l->fd, PERF_EVENT_IOC_DISABLE, 0);
 if (err)
  err = -errno;

 close(l->fd);
 return err;
}
