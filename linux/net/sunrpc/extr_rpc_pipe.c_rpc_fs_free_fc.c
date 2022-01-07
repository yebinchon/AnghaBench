
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {scalar_t__ s_fs_info; } ;


 int put_net (scalar_t__) ;

__attribute__((used)) static void rpc_fs_free_fc(struct fs_context *fc)
{
 if (fc->s_fs_info)
  put_net(fc->s_fs_info);
}
