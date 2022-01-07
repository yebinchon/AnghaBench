
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t* kallsyms_names ;
 size_t* kallsyms_token_index ;
 size_t* kallsyms_token_table ;

__attribute__((used)) static unsigned int kallsyms_expand_symbol(unsigned int off,
        char *result, size_t maxlen)
{
 int len, skipped_first = 0;
 const u8 *tptr, *data;


 data = &kallsyms_names[off];
 len = *data;
 data++;





 off += len + 1;





 while (len) {
  tptr = &kallsyms_token_table[kallsyms_token_index[*data]];
  data++;
  len--;

  while (*tptr) {
   if (skipped_first) {
    if (maxlen <= 1)
     goto tail;
    *result = *tptr;
    result++;
    maxlen--;
   } else
    skipped_first = 1;
   tptr++;
  }
 }

tail:
 if (maxlen)
  *result = '\0';


 return off;
}
