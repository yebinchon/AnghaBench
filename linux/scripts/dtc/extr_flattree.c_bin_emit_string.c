
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;


 struct data data_append_byte (struct data,char) ;
 struct data data_append_data (struct data,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void bin_emit_string(void *e, const char *str, int len)
{
 struct data *dtbuf = e;

 if (len == 0)
  len = strlen(str);

 *dtbuf = data_append_data(*dtbuf, str, len);
 *dtbuf = data_append_byte(*dtbuf, '\0');
}
