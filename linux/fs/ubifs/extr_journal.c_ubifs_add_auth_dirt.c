
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ubifs_add_dirt (struct ubifs_info*,int,int ) ;
 int ubifs_auth_node_sz (struct ubifs_info*) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info*) ;

__attribute__((used)) static void ubifs_add_auth_dirt(struct ubifs_info *c, int lnum)
{
 if (ubifs_authenticated(c))
  ubifs_add_dirt(c, lnum, ubifs_auth_node_sz(c));
}
