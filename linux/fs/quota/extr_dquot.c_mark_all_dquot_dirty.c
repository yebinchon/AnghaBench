
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dummy; } ;


 int MAXQUOTAS ;
 int mark_dquot_dirty (struct dquot* const) ;

__attribute__((used)) static inline int mark_all_dquot_dirty(struct dquot * const *dquot)
{
 int ret, err, cnt;

 ret = err = 0;
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (dquot[cnt])

   ret = mark_dquot_dirty(dquot[cnt]);
  if (!err)
   err = ret;
 }
 return err;
}
