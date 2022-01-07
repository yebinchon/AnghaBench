
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct inbuf {char* ptr; char const* limit; } ;


 int die (char*) ;
 int flat_realign (struct inbuf*,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *flat_read_string(struct inbuf *inb)
{
 int len = 0;
 const char *p = inb->ptr;
 char *str;

 do {
  if (p >= inb->limit)
   die("Premature end of data parsing flat device tree\n");
  len++;
 } while ((*p++) != '\0');

 str = xstrdup(inb->ptr);

 inb->ptr += len;

 flat_realign(inb, sizeof(uint32_t));

 return str;
}
