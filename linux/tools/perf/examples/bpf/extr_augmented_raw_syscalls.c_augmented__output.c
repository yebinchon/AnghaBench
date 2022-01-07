
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct augmented_args_payload {int dummy; } ;


 int BPF_F_CURRENT_CPU ;
 int __augmented_syscalls__ ;
 int perf_event_output (void*,int *,int ,struct augmented_args_payload*,int) ;

__attribute__((used)) static inline int augmented__output(void *ctx, struct augmented_args_payload *args, int len)
{

 return perf_event_output(ctx, &__augmented_syscalls__, BPF_F_CURRENT_CPU, args, len);
}
