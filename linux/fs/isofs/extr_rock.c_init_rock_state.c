
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rock_state {struct inode* inode; } ;
struct inode {int dummy; } ;


 int memset (struct rock_state*,int ,int) ;

__attribute__((used)) static void init_rock_state(struct rock_state *rs, struct inode *inode)
{
 memset(rs, 0, sizeof(*rs));
 rs->inode = inode;
}
