
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prog_fd; int repeat; int duration; int retval; int data_size_out; int data_size_in; void* data_out; void* data_in; } ;
union bpf_attr {TYPE_1__ test; } ;
typedef int attr ;
typedef int __u32 ;


 int BPF_PROG_TEST_RUN ;
 int memset (union bpf_attr*,int ,int) ;
 void* ptr_to_u64 (void*) ;
 int sys_bpf (int ,union bpf_attr*,int) ;

int bpf_prog_test_run(int prog_fd, int repeat, void *data, __u32 size,
        void *data_out, __u32 *size_out, __u32 *retval,
        __u32 *duration)
{
 union bpf_attr attr;
 int ret;

 memset(&attr, 0, sizeof(attr));
 attr.test.prog_fd = prog_fd;
 attr.test.data_in = ptr_to_u64(data);
 attr.test.data_out = ptr_to_u64(data_out);
 attr.test.data_size_in = size;
 attr.test.repeat = repeat;

 ret = sys_bpf(BPF_PROG_TEST_RUN, &attr, sizeof(attr));
 if (size_out)
  *size_out = attr.test.data_size_out;
 if (retval)
  *retval = attr.test.retval;
 if (duration)
  *duration = attr.test.duration;
 return ret;
}
