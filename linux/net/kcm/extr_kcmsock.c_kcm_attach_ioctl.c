
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int file; } ;
struct kcm_attach {int bpf_fd; int fd; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_TYPE_SOCKET_FILTER ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_get_type (int ,int ) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int fput (int ) ;
 int kcm_attach (struct socket*,struct socket*,struct bpf_prog*) ;
 struct socket* sockfd_lookup (int ,int*) ;

__attribute__((used)) static int kcm_attach_ioctl(struct socket *sock, struct kcm_attach *info)
{
 struct socket *csock;
 struct bpf_prog *prog;
 int err;

 csock = sockfd_lookup(info->fd, &err);
 if (!csock)
  return -ENOENT;

 prog = bpf_prog_get_type(info->bpf_fd, BPF_PROG_TYPE_SOCKET_FILTER);
 if (IS_ERR(prog)) {
  err = PTR_ERR(prog);
  goto out;
 }

 err = kcm_attach(sock, csock, prog);
 if (err) {
  bpf_prog_put(prog);
  goto out;
 }



 return 0;
out:
 fput(csock->file);
 return err;
}
