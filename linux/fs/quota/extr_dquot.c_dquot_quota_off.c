
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int dquot_disable (struct super_block*,int,int) ;

int dquot_quota_off(struct super_block *sb, int type)
{
 return dquot_disable(sb, type,
        DQUOT_USAGE_ENABLED | DQUOT_LIMITS_ENABLED);
}
