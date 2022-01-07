
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucounts {int dummy; } ;


 int UCOUNT_USER_NAMESPACES ;
 void dec_ucount (struct ucounts*,int ) ;

__attribute__((used)) static void dec_user_namespaces(struct ucounts *ucounts)
{
 return dec_ucount(ucounts, UCOUNT_USER_NAMESPACES);
}
