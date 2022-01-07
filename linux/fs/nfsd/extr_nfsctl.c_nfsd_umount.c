
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct net* s_fs_info; } ;
struct net {int dummy; } ;


 int kill_litter_super (struct super_block*) ;
 int put_net (struct net*) ;

__attribute__((used)) static void nfsd_umount(struct super_block *sb)
{
 struct net *net = sb->s_fs_info;

 kill_litter_super(sb);
 put_net(net);
}
