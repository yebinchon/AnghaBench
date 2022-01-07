
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf {char* base; char const* limit; } ;


 int die (char*,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *flat_read_stringtable(struct inbuf *inb, int offset)
{
 const char *p;

 p = inb->base + offset;
 while (1) {
  if (p >= inb->limit || p < inb->base)
   die("String offset %d overruns string table\n",
       offset);

  if (*p == '\0')
   break;

  p++;
 }

 return xstrdup(inb->base + offset);
}
