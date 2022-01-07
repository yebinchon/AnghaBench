
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {unsigned int freeobj; } ;



__attribute__((used)) static inline void set_freeobj(struct zspage *zspage, unsigned int obj)
{
 zspage->freeobj = obj;
}
