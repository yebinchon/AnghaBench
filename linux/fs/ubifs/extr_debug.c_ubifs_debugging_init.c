
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dbg; } ;
struct ubifs_debug_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (int,int ) ;

int ubifs_debugging_init(struct ubifs_info *c)
{
 c->dbg = kzalloc(sizeof(struct ubifs_debug_info), GFP_KERNEL);
 if (!c->dbg)
  return -ENOMEM;

 return 0;
}
