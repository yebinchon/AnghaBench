
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_link_fd {int fd; } ;
struct bpf_link {int dummy; } ;


 int close (int ) ;

__attribute__((used)) static int bpf_link__destroy_fd(struct bpf_link *link)
{
 struct bpf_link_fd *l = (void *)link;

 return close(l->fd);
}
