
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct bpf_prog* private_data; } ;
struct bpf_prog {int dummy; } ;


 int bpf_prog_put (struct bpf_prog*) ;

__attribute__((used)) static int bpf_prog_release(struct inode *inode, struct file *filp)
{
 struct bpf_prog *prog = filp->private_data;

 bpf_prog_put(prog);
 return 0;
}
