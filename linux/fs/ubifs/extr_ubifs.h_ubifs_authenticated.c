
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ authenticated; } ;


 int CONFIG_UBIFS_FS_AUTHENTICATION ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline int ubifs_authenticated(const struct ubifs_info *c)
{
 return (IS_ENABLED(CONFIG_UBIFS_FS_AUTHENTICATION)) && c->authenticated;
}
