
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_param {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int * net_ns; } ;


 int EOPNOTSUPP ;
 TYPE_2__* current ;
 int init_net ;
 int kstrtouint (char const*,int ,unsigned int*) ;
 int nf_conntrack_hash ;
 int nf_conntrack_hash_resize (unsigned int) ;
 int param_set_uint (char const*,struct kernel_param const*) ;

int nf_conntrack_set_hashsize(const char *val, const struct kernel_param *kp)
{
 unsigned int hashsize;
 int rc;

 if (current->nsproxy->net_ns != &init_net)
  return -EOPNOTSUPP;


 if (!nf_conntrack_hash)
  return param_set_uint(val, kp);

 rc = kstrtouint(val, 0, &hashsize);
 if (rc)
  return rc;

 return nf_conntrack_hash_resize(hashsize);
}
