
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int inuse; } ;



__attribute__((used)) static inline void mod_zspage_inuse(struct zspage *zspage, int val)
{
 zspage->inuse += val;
}
