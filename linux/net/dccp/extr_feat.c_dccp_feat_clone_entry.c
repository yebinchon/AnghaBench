
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int len; int vec; } ;
struct TYPE_4__ {TYPE_1__ sp; } ;
struct dccp_feat_entry {TYPE_2__ val; int feat_num; } ;


 scalar_t__ FEAT_SP ;
 scalar_t__ FEAT_UNKNOWN ;
 scalar_t__ dccp_feat_clone_sp_val (TYPE_2__*,int ,int ) ;
 scalar_t__ dccp_feat_type (int ) ;
 int gfp_any () ;
 int kfree (struct dccp_feat_entry*) ;
 struct dccp_feat_entry* kmemdup (struct dccp_feat_entry const*,int,int ) ;

__attribute__((used)) static struct dccp_feat_entry *
       dccp_feat_clone_entry(struct dccp_feat_entry const *original)
{
 struct dccp_feat_entry *new;
 u8 type = dccp_feat_type(original->feat_num);

 if (type == FEAT_UNKNOWN)
  return ((void*)0);

 new = kmemdup(original, sizeof(struct dccp_feat_entry), gfp_any());
 if (new == ((void*)0))
  return ((void*)0);

 if (type == FEAT_SP && dccp_feat_clone_sp_val(&new->val,
            original->val.sp.vec,
            original->val.sp.len)) {
  kfree(new);
  return ((void*)0);
 }
 return new;
}
