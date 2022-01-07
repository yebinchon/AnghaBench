
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {int * ops; TYPE_1__* net_ns; int user_ns; } ;
struct TYPE_2__ {int user_ns; } ;


 int get_user_ns (int ) ;
 int put_user_ns (int ) ;
 int rpc_fs_context_ops ;

__attribute__((used)) static int rpc_init_fs_context(struct fs_context *fc)
{
 put_user_ns(fc->user_ns);
 fc->user_ns = get_user_ns(fc->net_ns->user_ns);
 fc->ops = &rpc_fs_context_ops;
 return 0;
}
