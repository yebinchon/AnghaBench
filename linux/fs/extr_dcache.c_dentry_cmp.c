
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 unsigned char* READ_ONCE (int ) ;
 int dentry_string_cmp (unsigned char const*,unsigned char const*,unsigned int) ;

__attribute__((used)) static inline int dentry_cmp(const struct dentry *dentry, const unsigned char *ct, unsigned tcount)
{
 const unsigned char *cs = READ_ONCE(dentry->d_name.name);

 return dentry_string_cmp(cs, ct, tcount);
}
