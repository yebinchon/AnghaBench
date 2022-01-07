
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6copp {int copp_idx; } ;


 int EINVAL ;

int q6adm_get_copp_id(struct q6copp *copp)
{
 if (!copp)
  return -EINVAL;

 return copp->copp_idx;
}
