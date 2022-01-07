
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {char* print_fmt; } ;
struct trace_eval_map {int eval_string; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 char* eval_replace (char*,struct trace_eval_map*,int) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void update_event_printk(struct trace_event_call *call,
    struct trace_eval_map *map)
{
 char *ptr;
 int quote = 0;
 int len = strlen(map->eval_string);

 for (ptr = call->print_fmt; *ptr; ptr++) {
  if (*ptr == '\\') {
   ptr++;

   if (!*ptr)
    break;
   continue;
  }
  if (*ptr == '"') {
   quote ^= 1;
   continue;
  }
  if (quote)
   continue;
  if (isdigit(*ptr)) {

   do {
    ptr++;

   } while (isalnum(*ptr));
   if (!*ptr)
    break;




   continue;
  }
  if (isalpha(*ptr) || *ptr == '_') {
   if (strncmp(map->eval_string, ptr, len) == 0 &&
       !isalnum(ptr[len]) && ptr[len] != '_') {
    ptr = eval_replace(ptr, map, len);

    if (WARN_ON_ONCE(!ptr))
     return;







    continue;
   }
  skip_more:
   do {
    ptr++;
   } while (isalnum(*ptr) || *ptr == '_');
   if (!*ptr)
    break;




   if (*ptr == '.' || (ptr[0] == '-' && ptr[1] == '>')) {
    ptr += *ptr == '.' ? 1 : 2;
    if (!*ptr)
     break;
    goto skip_more;
   }




   continue;
  }
 }
}
