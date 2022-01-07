
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {scalar_t__ data_writes; scalar_t__ data_reads; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 TYPE_2__* g ;

__attribute__((used)) static inline u64 access_data(u64 *data, u64 val)
{
 if (g->p.data_reads)
  val += *data;
 if (g->p.data_writes)
  *data = val + 1;
 return val;
}
