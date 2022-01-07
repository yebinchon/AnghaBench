
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int vec; } ;
struct TYPE_6__ {TYPE_1__ sp; } ;
typedef TYPE_2__ dccp_feat_val ;


 scalar_t__ FEAT_SP ;
 scalar_t__ dccp_feat_type (int ) ;
 int kfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dccp_feat_val_destructor(u8 feat_num, dccp_feat_val *val)
{
 if (unlikely(val == ((void*)0)))
  return;
 if (dccp_feat_type(feat_num) == FEAT_SP)
  kfree(val->sp.vec);
 memset(val, 0, sizeof(*val));
}
