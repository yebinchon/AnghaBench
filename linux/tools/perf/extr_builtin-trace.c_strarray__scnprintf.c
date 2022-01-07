
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strarray {int offset; int nr_entries; char* prefix; int ** entries; } ;


 size_t scnprintf (char*,size_t,char const*,...) ;

size_t strarray__scnprintf(struct strarray *sa, char *bf, size_t size, const char *intfmt, bool show_prefix, int val)
{
 int idx = val - sa->offset;

 if (idx < 0 || idx >= sa->nr_entries || sa->entries[idx] == ((void*)0)) {
  size_t printed = scnprintf(bf, size, intfmt, val);
  if (show_prefix)
   printed += scnprintf(bf + printed, size - printed, " /* %s??? */", sa->prefix);
  return printed;
 }

 return scnprintf(bf, size, "%s%s", show_prefix ? sa->prefix : "", sa->entries[idx]);
}
