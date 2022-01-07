
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int __ubifs_exit_authentication (struct ubifs_info*) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info*) ;

__attribute__((used)) static inline void ubifs_exit_authentication(struct ubifs_info *c)
{
 if (ubifs_authenticated(c))
  __ubifs_exit_authentication(c);
}
