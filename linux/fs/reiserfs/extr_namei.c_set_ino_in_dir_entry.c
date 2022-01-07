
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_key {int k_objectid; int k_dir_id; } ;
struct reiserfs_dir_entry {size_t de_entry_num; TYPE_1__* de_deh; } ;
struct TYPE_2__ {int deh_objectid; int deh_dir_id; } ;



__attribute__((used)) static void set_ino_in_dir_entry(struct reiserfs_dir_entry *de,
     struct reiserfs_key *key)
{

 de->de_deh[de->de_entry_num].deh_dir_id = key->k_dir_id;
 de->de_deh[de->de_entry_num].deh_objectid = key->k_objectid;
}
