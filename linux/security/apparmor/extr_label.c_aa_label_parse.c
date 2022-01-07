
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_label {int dummy; } ;
typedef int gfp_t ;


 struct aa_label* aa_label_strn_parse (struct aa_label*,char const*,int ,int ,int,int) ;
 int strlen (char const*) ;

struct aa_label *aa_label_parse(struct aa_label *base, const char *str,
    gfp_t gfp, bool create, bool force_stack)
{
 return aa_label_strn_parse(base, str, strlen(str), gfp, create,
       force_stack);
}
