
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 int isofs_hashi_common (struct dentry const*,struct qstr*,int ) ;

__attribute__((used)) static int
isofs_hashi(const struct dentry *dentry, struct qstr *qstr)
{
 return isofs_hashi_common(dentry, qstr, 0);
}
