
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline unsigned int order_objects(unsigned int order, unsigned int size)
{
 return ((unsigned int)PAGE_SIZE << order) / size;
}
