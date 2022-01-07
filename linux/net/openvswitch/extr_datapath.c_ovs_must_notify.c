
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genl_info {TYPE_1__* nlhdr; } ;
struct genl_family {int dummy; } ;
struct TYPE_2__ {int nlmsg_flags; } ;


 int NLM_F_ECHO ;
 scalar_t__ genl_has_listeners (struct genl_family*,int ,unsigned int) ;
 int genl_info_net (struct genl_info*) ;

__attribute__((used)) static bool ovs_must_notify(struct genl_family *family, struct genl_info *info,
       unsigned int group)
{
 return info->nlhdr->nlmsg_flags & NLM_F_ECHO ||
        genl_has_listeners(family, genl_info_net(info), group);
}
