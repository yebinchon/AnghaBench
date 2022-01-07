
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pushpull {int ofs; } ;



__attribute__((used)) static inline int pushedbits(struct pushpull *pp)
{
 return pp->ofs;
}
