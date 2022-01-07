
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item_head {int ih_key; } ;


 scalar_t__ KEY_FORMAT_3_6 ;
 int ih_free_space (struct item_head*) ;
 int ih_item_len (struct item_head*) ;
 int ih_location (struct item_head*) ;
 scalar_t__ ih_version (struct item_head*) ;
 int scnprintf (char*,size_t,char*,...) ;
 int scnprintf_le_key (char*,int,int *) ;

__attribute__((used)) static int scnprintf_item_head(char *buf, size_t size, struct item_head *ih)
{
 if (ih) {
  char *p = buf;
  char * const end = buf + size;

  p += scnprintf(p, end - p, "%s",
          (ih_version(ih) == KEY_FORMAT_3_6) ?
          "*3.6* " : "*3.5*");

  p += scnprintf_le_key(p, end - p, &ih->ih_key);

  p += scnprintf(p, end - p,
          ", item_len %d, item_location %d, free_space(entry_count) %d",
          ih_item_len(ih), ih_location(ih),
          ih_free_space(ih));
  return p - buf;
 } else
  return scnprintf(buf, size, "[NULL]");
}
