
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* setTreble ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ mach; } ;


 TYPE_2__ dmasound ;
 int stub1 (int) ;

__attribute__((used)) static inline int dmasound_set_treble(int treble)
{
 return dmasound.mach.setTreble ? dmasound.mach.setTreble(treble) : 50;
}
