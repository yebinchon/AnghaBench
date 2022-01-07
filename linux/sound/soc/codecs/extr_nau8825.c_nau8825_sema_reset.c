
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct nau8825 {TYPE_1__ xtalk_sem; } ;



__attribute__((used)) static inline void nau8825_sema_reset(struct nau8825 *nau8825)
{
 nau8825->xtalk_sem.count = 1;
}
