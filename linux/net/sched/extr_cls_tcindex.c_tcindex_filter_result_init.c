
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcindex_filter_result {int exts; } ;
struct net {int dummy; } ;


 int TCA_TCINDEX_ACT ;
 int TCA_TCINDEX_POLICE ;
 int memset (struct tcindex_filter_result*,int ,int) ;
 int tcf_exts_init (int *,struct net*,int ,int ) ;

__attribute__((used)) static int tcindex_filter_result_init(struct tcindex_filter_result *r,
          struct net *net)
{
 memset(r, 0, sizeof(*r));
 return tcf_exts_init(&r->exts, net, TCA_TCINDEX_ACT,
        TCA_TCINDEX_POLICE);
}
