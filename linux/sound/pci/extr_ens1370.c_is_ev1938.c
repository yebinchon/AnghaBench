
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ensoniq {TYPE_1__* pci; } ;
struct TYPE_2__ {int device; } ;



__attribute__((used)) static inline bool is_ev1938(struct ensoniq *ensoniq)
{
 return ensoniq->pci->device == 0x8938;
}
