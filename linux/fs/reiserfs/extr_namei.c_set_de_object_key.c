
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_dir_entry {size_t de_entry_num; int * de_deh; int de_objectid; int de_dir_id; int de_ih; } ;


 int BUG_ON (int) ;
 int deh_dir_id (int *) ;
 int deh_objectid (int *) ;
 size_t ih_entry_count (int ) ;

__attribute__((used)) static inline void set_de_object_key(struct reiserfs_dir_entry *de)
{
 BUG_ON(de->de_entry_num >= ih_entry_count(de->de_ih));
 de->de_dir_id = deh_dir_id(&de->de_deh[de->de_entry_num]);
 de->de_objectid = deh_objectid(&de->de_deh[de->de_entry_num]);
}
