
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink {int dummy; } ;


 int DEVLINK_ATTR_PAD ;
 int DEVLINK_ATTR_REGION_CHUNK ;
 int DEVLINK_ATTR_REGION_CHUNK_ADDR ;
 int DEVLINK_ATTR_REGION_CHUNK_DATA ;
 int EINVAL ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put (struct sk_buff*,int ,int ,int *) ;
 int nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_region_read_chunk_fill(struct sk_buff *msg,
       struct devlink *devlink,
       u8 *chunk, u32 chunk_size,
       u64 addr)
{
 struct nlattr *chunk_attr;
 int err;

 chunk_attr = nla_nest_start_noflag(msg, DEVLINK_ATTR_REGION_CHUNK);
 if (!chunk_attr)
  return -EINVAL;

 err = nla_put(msg, DEVLINK_ATTR_REGION_CHUNK_DATA, chunk_size, chunk);
 if (err)
  goto nla_put_failure;

 err = nla_put_u64_64bit(msg, DEVLINK_ATTR_REGION_CHUNK_ADDR, addr,
    DEVLINK_ATTR_PAD);
 if (err)
  goto nla_put_failure;

 nla_nest_end(msg, chunk_attr);
 return 0;

nla_put_failure:
 nla_nest_cancel(msg, chunk_attr);
 return err;
}
