
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strarray {char** entries; char* prefix; int nr_entries; } ;


 size_t scnprintf (char*,size_t,char*,...) ;

size_t strarray__scnprintf_flags(struct strarray *sa, char *bf, size_t size, bool show_prefix, unsigned long flags)
{
 int i, printed = 0;

 if (flags == 0) {
  const char *s = sa->entries[0];
  if (s)
   return scnprintf(bf, size, "%s%s", show_prefix ? sa->prefix : "", s);
  return scnprintf(bf, size, "%d", 0);
 }

 for (i = 1; i < sa->nr_entries; ++i) {
  unsigned long bit = 1UL << (i - 1);

  if (!(flags & bit))
   continue;

  if (printed != 0)
   printed += scnprintf(bf + printed, size - printed, "|");

  if (sa->entries[i] != ((void*)0))
   printed += scnprintf(bf + printed, size - printed, "%s%s", show_prefix ? sa->prefix : "", sa->entries[i]);
  else
   printed += scnprintf(bf + printed, size - printed, "0x%#", bit);
 }

 return printed;
}
