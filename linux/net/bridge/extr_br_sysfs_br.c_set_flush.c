
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int br_fdb_flush (struct net_bridge*) ;

__attribute__((used)) static int set_flush(struct net_bridge *br, unsigned long val)
{
 br_fdb_flush(br);
 return 0;
}
