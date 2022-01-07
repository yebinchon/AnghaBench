
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int dummy; } ;



__attribute__((used)) static bool expect_iter_all(struct nf_conntrack_expect *exp, void *data)
{
 return 1;
}
