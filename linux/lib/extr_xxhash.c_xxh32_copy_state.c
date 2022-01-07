
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxh32_state {int dummy; } ;


 int memcpy (struct xxh32_state*,struct xxh32_state const*,int) ;

void xxh32_copy_state(struct xxh32_state *dst, const struct xxh32_state *src)
{
 memcpy(dst, src, sizeof(*dst));
}
