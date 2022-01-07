
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __u32 ;


 long long MAX_CNT ;
 long long cnt ;
 int printf (char*,long long,...) ;
 long long start_time ;
 long long time_get_ns () ;

__attribute__((used)) static void print_bpf_output(void *ctx, int cpu, void *data, __u32 size)
{
 struct {
  __u64 pid;
  __u64 cookie;
 } *e = data;

 if (e->cookie != 0x12345678) {
  printf("BUG pid %llx cookie %llx sized %d\n",
         e->pid, e->cookie, size);
  return;
 }

 cnt++;

 if (cnt == MAX_CNT) {
  printf("recv %lld events per sec\n",
         MAX_CNT * 1000000000ll / (time_get_ns() - start_time));
  return;
 }
}
