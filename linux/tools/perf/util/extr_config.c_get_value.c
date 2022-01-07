
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* config_fn_t ) (char*,char*,void*) ;


 unsigned int MAXNAME ;
 scalar_t__ config_file_eof ;
 int get_next_char () ;
 int iskeychar (int) ;
 char* parse_value () ;

__attribute__((used)) static int get_value(config_fn_t fn, void *data, char *name, unsigned int len)
{
 int c;
 char *value;


 for (;;) {
  c = get_next_char();
  if (config_file_eof)
   break;
  if (!iskeychar(c))
   break;
  name[len++] = c;
  if (len >= MAXNAME)
   return -1;
 }
 name[len] = 0;
 while (c == ' ' || c == '\t')
  c = get_next_char();

 value = ((void*)0);
 if (c != '\n') {
  if (c != '=')
   return -1;
  value = parse_value();
  if (!value)
   return -1;
 }
 return fn(name, value, data);
}
