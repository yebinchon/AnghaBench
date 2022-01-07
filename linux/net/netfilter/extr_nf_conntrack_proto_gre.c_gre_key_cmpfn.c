
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ all; } ;
struct TYPE_11__ {scalar_t__ protonum; TYPE_3__ u; int u3; } ;
struct TYPE_8__ {scalar_t__ l3num; int u3; } ;
struct TYPE_12__ {TYPE_4__ dst; TYPE_1__ src; } ;
struct nf_ct_gre_keymap {TYPE_5__ tuple; } ;
struct TYPE_13__ {scalar_t__ all; } ;
struct TYPE_14__ {scalar_t__ protonum; TYPE_6__ u; int u3; } ;
struct TYPE_9__ {scalar_t__ l3num; int u3; } ;
struct nf_conntrack_tuple {TYPE_7__ dst; TYPE_2__ src; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline int gre_key_cmpfn(const struct nf_ct_gre_keymap *km,
    const struct nf_conntrack_tuple *t)
{
 return km->tuple.src.l3num == t->src.l3num &&
        !memcmp(&km->tuple.src.u3, &t->src.u3, sizeof(t->src.u3)) &&
        !memcmp(&km->tuple.dst.u3, &t->dst.u3, sizeof(t->dst.u3)) &&
        km->tuple.dst.protonum == t->dst.protonum &&
        km->tuple.dst.u.all == t->dst.u.all;
}
