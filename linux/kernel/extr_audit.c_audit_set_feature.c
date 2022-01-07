
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct audit_features {int mask; int features; int lock; } ;
struct TYPE_2__ {int features; int lock; } ;


 int ARRAY_SIZE (int ) ;
 int AUDIT_FEATURE_TO_MASK (int) ;
 int AUDIT_LAST_FEATURE ;
 int BUILD_BUG_ON (int) ;
 int EPERM ;
 TYPE_1__ af ;
 int audit_feature_names ;
 int audit_log_feature_change (int,int,int,int,int,int) ;
 struct audit_features* nlmsg_data (int ) ;
 int nlmsg_hdr (struct sk_buff*) ;

__attribute__((used)) static int audit_set_feature(struct sk_buff *skb)
{
 struct audit_features *uaf;
 int i;

 BUILD_BUG_ON(AUDIT_LAST_FEATURE + 1 > ARRAY_SIZE(audit_feature_names));
 uaf = nlmsg_data(nlmsg_hdr(skb));



 for (i = 0; i <= AUDIT_LAST_FEATURE; i++) {
  u32 feature = AUDIT_FEATURE_TO_MASK(i);
  u32 old_feature, new_feature, old_lock, new_lock;


  if (!(feature & uaf->mask))
   continue;

  old_feature = af.features & feature;
  new_feature = uaf->features & feature;
  new_lock = (uaf->lock | af.lock) & feature;
  old_lock = af.lock & feature;


  if (old_lock && (new_feature != old_feature)) {
   audit_log_feature_change(i, old_feature, new_feature,
       old_lock, new_lock, 0);
   return -EPERM;
  }
 }

 for (i = 0; i <= AUDIT_LAST_FEATURE; i++) {
  u32 feature = AUDIT_FEATURE_TO_MASK(i);
  u32 old_feature, new_feature, old_lock, new_lock;


  if (!(feature & uaf->mask))
   continue;

  old_feature = af.features & feature;
  new_feature = uaf->features & feature;
  old_lock = af.lock & feature;
  new_lock = (uaf->lock | af.lock) & feature;

  if (new_feature != old_feature)
   audit_log_feature_change(i, old_feature, new_feature,
       old_lock, new_lock, 1);

  if (new_feature)
   af.features |= feature;
  else
   af.features &= ~feature;
  af.lock |= new_lock;
 }

 return 0;
}
