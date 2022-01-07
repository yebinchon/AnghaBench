
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_off_print (char const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void status_print(const char *name, const char *macro,
    const char *status)
{
 printf("%22s: ", name);
 on_off_print(status);
 printf("  # %s\n", macro);
}
