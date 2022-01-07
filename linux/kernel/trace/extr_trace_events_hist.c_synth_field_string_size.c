
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int STR_VAR_LEN_MAX ;
 int kstrtouint (char*,int ,int*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,unsigned int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int synth_field_string_size(char *type)
{
 char buf[4], *end, *start;
 unsigned int len;
 int size, err;

 start = strstr(type, "char[");
 if (start == ((void*)0))
  return -EINVAL;
 start += sizeof("char[") - 1;

 end = strchr(type, ']');
 if (!end || end < start)
  return -EINVAL;

 len = end - start;
 if (len > 3)
  return -EINVAL;

 strncpy(buf, start, len);
 buf[len] = '\0';

 err = kstrtouint(buf, 0, &size);
 if (err)
  return err;

 if (size > STR_VAR_LEN_MAX)
  return -EINVAL;

 return size;
}
