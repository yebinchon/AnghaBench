
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dummy; } ;


 unsigned int MAXQUOTAS ;
 int dqput (struct dquot*) ;

__attribute__((used)) static inline void dqput_all(struct dquot **dquot)
{
 unsigned int cnt;

 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  dqput(dquot[cnt]);
}
