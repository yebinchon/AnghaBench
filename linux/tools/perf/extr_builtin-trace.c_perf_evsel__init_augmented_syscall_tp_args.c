
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ offset; } ;
struct syscall_tp {TYPE_1__ id; int args; } ;
struct evsel {struct syscall_tp* priv; } ;


 int __tp_field__init_ptr (int *,scalar_t__) ;

__attribute__((used)) static int perf_evsel__init_augmented_syscall_tp_args(struct evsel *evsel)
{
 struct syscall_tp *sc = evsel->priv;

 return __tp_field__init_ptr(&sc->args, sc->id.offset + sizeof(u64));
}
