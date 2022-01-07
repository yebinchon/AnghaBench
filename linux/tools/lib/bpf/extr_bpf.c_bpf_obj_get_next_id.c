
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int next_id; int start_id; } ;
typedef int attr ;
typedef int __u32 ;


 int memset (union bpf_attr*,int ,int) ;
 int sys_bpf (int,union bpf_attr*,int) ;

__attribute__((used)) static int bpf_obj_get_next_id(__u32 start_id, __u32 *next_id, int cmd)
{
 union bpf_attr attr;
 int err;

 memset(&attr, 0, sizeof(attr));
 attr.start_id = start_id;

 err = sys_bpf(cmd, &attr, sizeof(attr));
 if (!err)
  *next_id = attr.next_id;

 return err;
}
