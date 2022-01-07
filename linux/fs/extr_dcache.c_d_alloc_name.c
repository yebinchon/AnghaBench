
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char const* name; int hash_len; } ;
struct dentry {int dummy; } ;


 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 int hashlen_string (struct dentry*,char const*) ;

struct dentry *d_alloc_name(struct dentry *parent, const char *name)
{
 struct qstr q;

 q.name = name;
 q.hash_len = hashlen_string(parent, name);
 return d_alloc(parent, &q);
}
