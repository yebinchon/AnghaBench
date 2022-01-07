
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genradix_root {int dummy; } ;


 unsigned long GENRADIX_DEPTH_MASK ;

__attribute__((used)) static inline unsigned genradix_root_to_depth(struct genradix_root *r)
{
 return (unsigned long) r & GENRADIX_DEPTH_MASK;
}
