
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucounts {int dummy; } ;


 int UCOUNT_UTS_NAMESPACES ;
 int dec_ucount (struct ucounts*,int ) ;

__attribute__((used)) static void dec_uts_namespaces(struct ucounts *ucounts)
{
 dec_ucount(ucounts, UCOUNT_UTS_NAMESPACES);
}
