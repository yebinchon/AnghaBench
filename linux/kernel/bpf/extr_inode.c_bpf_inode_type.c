
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_op; } ;
typedef enum bpf_type { ____Placeholder_bpf_type } bpf_type ;


 int BPF_TYPE_MAP ;
 int BPF_TYPE_PROG ;
 int BPF_TYPE_UNSPEC ;
 int EACCES ;
 int bpf_map_iops ;
 int bpf_prog_iops ;

__attribute__((used)) static int bpf_inode_type(const struct inode *inode, enum bpf_type *type)
{
 *type = BPF_TYPE_UNSPEC;
 if (inode->i_op == &bpf_prog_iops)
  *type = BPF_TYPE_PROG;
 else if (inode->i_op == &bpf_map_iops)
  *type = BPF_TYPE_MAP;
 else
  return -EACCES;

 return 0;
}
