
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_elem {int dummy; } ;
struct ip_set_ext {int timeout; } ;
struct ip_set {int dummy; } ;


 scalar_t__ SET_WITH_COMMENT (struct ip_set*) ;
 scalar_t__ SET_WITH_COUNTER (struct ip_set*) ;
 scalar_t__ SET_WITH_SKBINFO (struct ip_set*) ;
 scalar_t__ SET_WITH_TIMEOUT (struct ip_set*) ;
 int ext_comment (struct set_elem*,struct ip_set*) ;
 int ext_counter (struct set_elem*,struct ip_set*) ;
 int ext_skbinfo (struct set_elem*,struct ip_set*) ;
 int ext_timeout (struct set_elem*,struct ip_set*) ;
 int ip_set_init_comment (struct ip_set*,int ,struct ip_set_ext const*) ;
 int ip_set_init_counter (int ,struct ip_set_ext const*) ;
 int ip_set_init_skbinfo (int ,struct ip_set_ext const*) ;
 int ip_set_timeout_set (int ,int ) ;

__attribute__((used)) static void
list_set_init_extensions(struct ip_set *set, const struct ip_set_ext *ext,
    struct set_elem *e)
{
 if (SET_WITH_COUNTER(set))
  ip_set_init_counter(ext_counter(e, set), ext);
 if (SET_WITH_COMMENT(set))
  ip_set_init_comment(set, ext_comment(e, set), ext);
 if (SET_WITH_SKBINFO(set))
  ip_set_init_skbinfo(ext_skbinfo(e, set), ext);

 if (SET_WITH_TIMEOUT(set))
  ip_set_timeout_set(ext_timeout(e, set), ext->timeout);
}
