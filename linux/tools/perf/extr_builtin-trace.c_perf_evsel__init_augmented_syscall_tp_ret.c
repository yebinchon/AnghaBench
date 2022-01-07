
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ offset; } ;
struct syscall_tp {TYPE_1__ id; int ret; } ;
struct evsel {int needs_swap; struct syscall_tp* priv; } ;


 int __tp_field__init_uint (int *,int,scalar_t__,int ) ;

__attribute__((used)) static int perf_evsel__init_augmented_syscall_tp_ret(struct evsel *evsel)
{
 struct syscall_tp *sc = evsel->priv;

 return __tp_field__init_uint(&sc->ret, sizeof(u64), sc->id.offset + sizeof(u64), evsel->needs_swap);
}
