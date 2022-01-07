
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int dbg_walk_index (struct ubifs_info*,int *,int ,int *) ;
 int dump_znode ;

void ubifs_dump_index(struct ubifs_info *c)
{
 dbg_walk_index(c, ((void*)0), dump_znode, ((void*)0));
}
