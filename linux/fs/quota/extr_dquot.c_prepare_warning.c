
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot_warn {int w_type; int w_dq_id; int w_sb; } ;
struct dquot {int dq_id; int dq_sb; } ;


 scalar_t__ warning_issued (struct dquot*,int) ;

__attribute__((used)) static void prepare_warning(struct dquot_warn *warn, struct dquot *dquot,
       int warntype)
{
 if (warning_issued(dquot, warntype))
  return;
 warn->w_type = warntype;
 warn->w_sb = dquot->dq_sb;
 warn->w_dq_id = dquot->dq_id;
}
