
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int prog_id; } ;
typedef int u32 ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_GET_FD_BY_ID ;
 int CAP_SYS_ADMIN ;
 scalar_t__ CHECK_ATTR (int ) ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 struct bpf_prog* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_inc_not_zero (struct bpf_prog*) ;
 int bpf_prog_new_fd (struct bpf_prog*) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int capable (int ) ;
 struct bpf_prog* idr_find (int *,int ) ;
 int prog_idr ;
 int prog_idr_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bpf_prog_get_fd_by_id(const union bpf_attr *attr)
{
 struct bpf_prog *prog;
 u32 id = attr->prog_id;
 int fd;

 if (CHECK_ATTR(BPF_PROG_GET_FD_BY_ID))
  return -EINVAL;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 spin_lock_bh(&prog_idr_lock);
 prog = idr_find(&prog_idr, id);
 if (prog)
  prog = bpf_prog_inc_not_zero(prog);
 else
  prog = ERR_PTR(-ENOENT);
 spin_unlock_bh(&prog_idr_lock);

 if (IS_ERR(prog))
  return PTR_ERR(prog);

 fd = bpf_prog_new_fd(prog);
 if (fd < 0)
  bpf_prog_put(prog);

 return fd;
}
