
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxh64_state {int dummy; } ;


 int memcpy (struct xxh64_state*,struct xxh64_state const*,int) ;

void xxh64_copy_state(struct xxh64_state *dst, const struct xxh64_state *src)
{
 memcpy(dst, src, sizeof(*dst));
}
