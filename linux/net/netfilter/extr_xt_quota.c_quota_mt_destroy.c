
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_quota_info {int master; } ;
struct xt_mtdtor_param {struct xt_quota_info* matchinfo; } ;


 int kfree (int ) ;

__attribute__((used)) static void quota_mt_destroy(const struct xt_mtdtor_param *par)
{
 const struct xt_quota_info *q = par->matchinfo;

 kfree(q->master);
}
