
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int PAGE_SIZE ;
 scalar_t__ fsverity_active (struct inode const*) ;

__attribute__((used)) static inline bool ext4_need_verity(const struct inode *inode, pgoff_t idx)
{
 return fsverity_active(inode) &&
        idx < DIV_ROUND_UP(inode->i_size, PAGE_SIZE);
}
