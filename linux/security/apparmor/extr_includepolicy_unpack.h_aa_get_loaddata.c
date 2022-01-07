
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_loaddata {int dummy; } ;


 int AA_BUG (int ) ;
 struct aa_loaddata* __aa_get_loaddata (struct aa_loaddata*) ;

__attribute__((used)) static inline struct aa_loaddata *
aa_get_loaddata(struct aa_loaddata *data)
{
 struct aa_loaddata *tmp = __aa_get_loaddata(data);

 AA_BUG(data && !tmp);

 return tmp;
}
