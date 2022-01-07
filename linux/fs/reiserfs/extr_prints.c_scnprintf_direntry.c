
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {int de_namelen; int de_objectid; int de_dir_id; int de_name; } ;


 int memcpy (char*,int ,int) ;
 int scnprintf (char*,size_t,char*,char*,int ,int ) ;

__attribute__((used)) static int scnprintf_direntry(char *buf, size_t size,
         struct reiserfs_dir_entry *de)
{
 char name[20];

 memcpy(name, de->de_name, de->de_namelen > 19 ? 19 : de->de_namelen);
 name[de->de_namelen > 19 ? 19 : de->de_namelen] = 0;
 return scnprintf(buf, size, "\"%s\"==>[%d %d]",
    name, de->de_dir_id, de->de_objectid);
}
