
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;


 int OMFS_DIR_START ;
 struct buffer_head* omfs_bread (int ,int ) ;
 int omfs_hash (char const*,int,int) ;

__attribute__((used)) static struct buffer_head *omfs_get_bucket(struct inode *dir,
  const char *name, int namelen, int *ofs)
{
 int nbuckets = (dir->i_size - OMFS_DIR_START)/8;
 int bucket = omfs_hash(name, namelen, nbuckets);

 *ofs = OMFS_DIR_START + bucket * 8;
 return omfs_bread(dir->i_sb, dir->i_ino);
}
