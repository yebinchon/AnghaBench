
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*) ;

__attribute__((used)) static void warn_gssd(void)
{
 dprintk("AUTH_GSS upcall failed. Please check user daemon is running.\n");
}
