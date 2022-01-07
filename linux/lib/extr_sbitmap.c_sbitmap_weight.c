
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap {int dummy; } ;


 unsigned int __sbitmap_weight (struct sbitmap const*,int) ;

__attribute__((used)) static unsigned int sbitmap_weight(const struct sbitmap *sb)
{
 return __sbitmap_weight(sb, 1);
}
