
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int dummy; } ;


 int EFAULT ;
 char* check_pointer_msg (void const*) ;
 char* error_string (char*,char*,char const*,struct printf_spec) ;

__attribute__((used)) static int check_pointer(char **buf, char *end, const void *ptr,
    struct printf_spec spec)
{
 const char *err_msg;

 err_msg = check_pointer_msg(ptr);
 if (err_msg) {
  *buf = error_string(*buf, end, err_msg, spec);
  return -EFAULT;
 }

 return 0;
}
