
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_acl_param {char* data; } ;


 char* strchr (char*,char) ;
 int strlen (char*) ;

char *tomoyo_read_token(struct tomoyo_acl_param *param)
{
 char *pos = param->data;
 char *del = strchr(pos, ' ');

 if (del)
  *del++ = '\0';
 else
  del = pos + strlen(pos);
 param->data = del;
 return pos;
}
