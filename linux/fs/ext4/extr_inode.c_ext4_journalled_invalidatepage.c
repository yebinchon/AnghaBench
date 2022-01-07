
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int WARN_ON (int) ;
 scalar_t__ __ext4_journalled_invalidatepage (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static void ext4_journalled_invalidatepage(struct page *page,
        unsigned int offset,
        unsigned int length)
{
 WARN_ON(__ext4_journalled_invalidatepage(page, offset, length) < 0);
}
