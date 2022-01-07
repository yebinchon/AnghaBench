
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct ocfs2_dir_entry {int file_type; } ;


 int fs_umode_to_ftype (int ) ;

__attribute__((used)) static inline void ocfs2_set_de_type(struct ocfs2_dir_entry *de,
        umode_t mode)
{
 de->file_type = fs_umode_to_ftype(mode);
}
