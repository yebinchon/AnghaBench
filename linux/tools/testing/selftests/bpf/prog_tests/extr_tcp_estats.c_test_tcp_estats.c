
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;
typedef int __u32 ;


 int BPF_PROG_TYPE_TRACEPOINT ;
 int CHECK (int,char*,char*,int,int ) ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_load (char const*,int ,struct bpf_object**,int*) ;
 int errno ;

void test_tcp_estats(void)
{
 const char *file = "./test_tcp_estats.o";
 int err, prog_fd;
 struct bpf_object *obj;
 __u32 duration = 0;

 err = bpf_prog_load(file, BPF_PROG_TYPE_TRACEPOINT, &obj, &prog_fd);
 CHECK(err, "", "err %d errno %d\n", err, errno);
 if (err)
  return;

 bpf_object__close(obj);
}
