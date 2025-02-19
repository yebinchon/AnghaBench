
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_de_head {int dummy; } ;
struct item_head {int dummy; } ;
typedef int namebuf ;


 int GET_GENERATION_NUMBER (int ) ;
 int GET_HASH_VALUE (int ) ;
 scalar_t__ de_hidden (struct reiserfs_de_head*) ;
 int deh_dir_id (struct reiserfs_de_head*) ;
 int deh_location (struct reiserfs_de_head*) ;
 int deh_objectid (struct reiserfs_de_head*) ;
 int deh_offset (struct reiserfs_de_head*) ;
 int ih_entry_count (struct item_head*) ;
 int ih_item_len (struct item_head*) ;
 int memcpy (char*,char*,int) ;
 int printk (char*,...) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void direntry_print_item(struct item_head *ih, char *item)
{
 int i;
 int namelen;
 struct reiserfs_de_head *deh;
 char *name;
 static char namebuf[80];

 printk("\n # %-15s%-30s%-15s%-15s%-15s\n", "Name",
        "Key of pointed object", "Hash", "Gen number", "Status");

 deh = (struct reiserfs_de_head *)item;

 for (i = 0; i < ih_entry_count(ih); i++, deh++) {
  namelen =
      (i ? (deh_location(deh - 1)) : ih_item_len(ih)) -
      deh_location(deh);
  name = item + deh_location(deh);
  if (name[namelen - 1] == 0)
   namelen = strlen(name);
  namebuf[0] = '"';
  if (namelen > sizeof(namebuf) - 3) {
   strncpy(namebuf + 1, name, sizeof(namebuf) - 3);
   namebuf[sizeof(namebuf) - 2] = '"';
   namebuf[sizeof(namebuf) - 1] = 0;
  } else {
   memcpy(namebuf + 1, name, namelen);
   namebuf[namelen + 1] = '"';
   namebuf[namelen + 2] = 0;
  }

  printk("%d:  %-15s%-15d%-15d%-15lld%-15lld(%s)\n",
         i, namebuf,
         deh_dir_id(deh), deh_objectid(deh),
         GET_HASH_VALUE(deh_offset(deh)),
         GET_GENERATION_NUMBER((deh_offset(deh))),
         (de_hidden(deh)) ? "HIDDEN" : "VISIBLE");
 }
}
