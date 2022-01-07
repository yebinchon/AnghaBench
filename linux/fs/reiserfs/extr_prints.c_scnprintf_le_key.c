
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int k_objectid; int k_dir_id; } ;


 int le32_to_cpu (int ) ;
 int le_offset (struct reiserfs_key*) ;
 int le_type (struct reiserfs_key*) ;
 int scnprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int scnprintf_le_key(char *buf, size_t size, struct reiserfs_key *key)
{
 if (key)
  return scnprintf(buf, size, "[%d %d %s %s]",
     le32_to_cpu(key->k_dir_id),
     le32_to_cpu(key->k_objectid), le_offset(key),
     le_type(key));
 else
  return scnprintf(buf, size, "[NULL]");
}
