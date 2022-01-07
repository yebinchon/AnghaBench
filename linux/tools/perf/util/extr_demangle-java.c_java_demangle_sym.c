
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JAVA_DEMANGLE_NORET ;
 int MODE_PREFIX ;
 int MODE_TYPE ;
 char* __demangle_java_sym (char const*,char*,char*,size_t,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

char *
java_demangle_sym(const char *str, int flags)
{
 char *buf, *ptr;
 char *p;
 size_t len, l1 = 0;

 if (!str)
  return ((void*)0);


 p = strrchr(str, ')');
 if (!p)
  return ((void*)0);




 len = strlen(str) * 3 + 1;
 buf = malloc(len);
 if (!buf)
  return ((void*)0);

 buf[0] = '\0';
 if (!(flags & JAVA_DEMANGLE_NORET)) {



  ptr = __demangle_java_sym(p + 1, ((void*)0), buf, len, MODE_TYPE);
  if (!ptr)
   goto error;


  l1 = strlen(buf);
  buf[l1++] = ' ';
 }


 ptr = __demangle_java_sym(str, p + 1, buf + l1, len - l1, MODE_PREFIX);
 if (!ptr)
  goto error;

 return buf;
error:
 free(buf);
 return ((void*)0);
}
