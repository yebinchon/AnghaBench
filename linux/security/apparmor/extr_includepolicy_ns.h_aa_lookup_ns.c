
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int dummy; } ;


 struct aa_ns* aa_lookupn_ns (struct aa_ns*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline struct aa_ns *aa_lookup_ns(struct aa_ns *view, const char *name)
{
 return aa_lookupn_ns(view, name, strlen(name));
}
