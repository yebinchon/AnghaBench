
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_param_gset_ctx {int dummy; } ;
struct devlink_param {int (* get ) (struct devlink*,int ,struct devlink_param_gset_ctx*) ;int id; } ;
struct devlink {int dummy; } ;


 int EOPNOTSUPP ;
 int stub1 (struct devlink*,int ,struct devlink_param_gset_ctx*) ;

__attribute__((used)) static int devlink_param_get(struct devlink *devlink,
        const struct devlink_param *param,
        struct devlink_param_gset_ctx *ctx)
{
 if (!param->get)
  return -EOPNOTSUPP;
 return param->get(devlink, param->id, ctx);
}
