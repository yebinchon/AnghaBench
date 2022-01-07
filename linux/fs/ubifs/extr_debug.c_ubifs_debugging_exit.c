
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dbg; } ;


 int kfree (int ) ;

void ubifs_debugging_exit(struct ubifs_info *c)
{
 kfree(c->dbg);
}
