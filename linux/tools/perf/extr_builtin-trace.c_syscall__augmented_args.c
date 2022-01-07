
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall {int args_size; } ;
struct perf_sample {int raw_size; void* raw_data; } ;



__attribute__((used)) static void *syscall__augmented_args(struct syscall *sc, struct perf_sample *sample, int *augmented_args_size, int raw_augmented_args_size)
{
 void *augmented_args = ((void*)0);
 int args_size = raw_augmented_args_size ?: sc->args_size;

 *augmented_args_size = sample->raw_size - args_size;
 if (*augmented_args_size > 0)
  augmented_args = sample->raw_data + args_size;

 return augmented_args;
}
