
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int EINVAL ;
 int ENOMEM ;
 int FLAG_ABS_ROOT ;
 int FLAG_HIDDEN_UNCONFINED ;
 int FLAG_SHOW_MODE ;
 int FLAG_VIEW_SUBNS ;
 int GFP_ATOMIC ;
 int aa_label_asxprint (char**,int ,struct aa_label*,int,int ) ;
 int aa_label_snxprint (int *,int ,int ,struct aa_label*,int) ;
 struct aa_label* aa_secid_to_label (int) ;
 int root_ns ;

int apparmor_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{

 struct aa_label *label = aa_secid_to_label(secid);
 int len;

 AA_BUG(!seclen);

 if (!label)
  return -EINVAL;

 if (secdata)
  len = aa_label_asxprint(secdata, root_ns, label,
     FLAG_SHOW_MODE | FLAG_VIEW_SUBNS |
     FLAG_HIDDEN_UNCONFINED | FLAG_ABS_ROOT,
     GFP_ATOMIC);
 else
  len = aa_label_snxprint(((void*)0), 0, root_ns, label,
     FLAG_SHOW_MODE | FLAG_VIEW_SUBNS |
     FLAG_HIDDEN_UNCONFINED | FLAG_ABS_ROOT);
 if (len < 0)
  return -ENOMEM;

 *seclen = len;

 return 0;
}
