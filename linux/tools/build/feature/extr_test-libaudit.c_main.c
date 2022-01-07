
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* audit_errno_to_name (int ) ;
 int audit_open () ;
 int printf (char*,char*) ;

int main(void)
{
 printf("error message: %s\n", audit_errno_to_name(0));

 return audit_open();
}
