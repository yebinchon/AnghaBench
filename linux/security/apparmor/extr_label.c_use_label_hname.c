
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;
struct aa_label {scalar_t__ hname; } ;


 int FLAG_SHOW_MODE ;
 struct aa_ns* labels_ns (struct aa_label*) ;

__attribute__((used)) static inline bool use_label_hname(struct aa_ns *ns, struct aa_label *label,
       int flags)
{
 if (label->hname && (!ns || labels_ns(label) == ns) &&
     !(flags & ~FLAG_SHOW_MODE))
  return 1;

 return 0;
}
