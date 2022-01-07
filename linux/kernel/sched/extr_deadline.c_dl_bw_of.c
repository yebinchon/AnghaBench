
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dl_bw {int dummy; } ;
struct TYPE_3__ {struct dl_bw dl_bw; } ;
struct TYPE_4__ {TYPE_1__ dl; } ;


 TYPE_2__* cpu_rq (int) ;

__attribute__((used)) static inline struct dl_bw *dl_bw_of(int i)
{
 return &cpu_rq(i)->dl.dl_bw;
}
