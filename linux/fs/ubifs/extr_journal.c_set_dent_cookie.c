
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ double_hash; } ;
struct ubifs_dent_node {scalar_t__ cookie; } ;


 scalar_t__ prandom_u32 () ;

__attribute__((used)) static void set_dent_cookie(struct ubifs_info *c, struct ubifs_dent_node *dent)
{
 if (c->double_hash)
  dent->cookie = prandom_u32();
 else
  dent->cookie = 0;
}
