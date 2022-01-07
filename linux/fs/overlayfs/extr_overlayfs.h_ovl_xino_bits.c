
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_fs {unsigned int xino_bits; } ;



__attribute__((used)) static inline unsigned int ovl_xino_bits(struct super_block *sb)
{
 struct ovl_fs *ofs = sb->s_fs_info;

 return ofs->xino_bits;
}
