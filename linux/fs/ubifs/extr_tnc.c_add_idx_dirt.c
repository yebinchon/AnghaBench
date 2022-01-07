
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int calc_idx_sz; } ;


 scalar_t__ ALIGN (int,int) ;
 int ubifs_add_dirt (struct ubifs_info*,int,int) ;

__attribute__((used)) static int add_idx_dirt(struct ubifs_info *c, int lnum, int dirt)
{
 c->calc_idx_sz -= ALIGN(dirt, 8);
 return ubifs_add_dirt(c, lnum, dirt);
}
