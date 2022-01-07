
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_de_head {int dummy; } ;


 int deh_dir_id (struct reiserfs_de_head*) ;
 int deh_location (struct reiserfs_de_head*) ;
 int deh_objectid (struct reiserfs_de_head*) ;
 int deh_offset (struct reiserfs_de_head*) ;
 int deh_state (struct reiserfs_de_head*) ;
 int scnprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int scnprintf_de_head(char *buf, size_t size,
        struct reiserfs_de_head *deh)
{
 if (deh)
  return scnprintf(buf, size,
     "[offset=%d dir_id=%d objectid=%d location=%d state=%04x]",
     deh_offset(deh), deh_dir_id(deh),
     deh_objectid(deh), deh_location(deh),
     deh_state(deh));
 else
  return scnprintf(buf, size, "[NULL]");

}
