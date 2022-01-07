
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {char const* name; int len; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_op; } ;
struct TYPE_3__ {int (* d_compare ) (int *,int,int ,struct qstr*) ;} ;


 scalar_t__ likely (int) ;
 scalar_t__ memcmp (int ,char const*,int) ;
 int stub1 (int *,int,int ,struct qstr*) ;

__attribute__((used)) static int
isofs_cmp(struct dentry *dentry, const char *compare, int dlen)
{
 struct qstr qstr;
 qstr.name = compare;
 qstr.len = dlen;
 if (likely(!dentry->d_op))
  return dentry->d_name.len != dlen || memcmp(dentry->d_name.name, compare, dlen);
 return dentry->d_op->d_compare(((void*)0), dentry->d_name.len, dentry->d_name.name, &qstr);
}
