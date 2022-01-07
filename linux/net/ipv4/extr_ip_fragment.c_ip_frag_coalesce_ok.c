
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ user; } ;
struct TYPE_5__ {TYPE_1__ v4; } ;
struct TYPE_6__ {TYPE_2__ key; } ;
struct ipq {TYPE_3__ q; } ;


 scalar_t__ IP_DEFRAG_LOCAL_DELIVER ;

__attribute__((used)) static bool ip_frag_coalesce_ok(const struct ipq *qp)
{
 return qp->q.key.v4.user == IP_DEFRAG_LOCAL_DELIVER;
}
