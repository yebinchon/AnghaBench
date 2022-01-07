
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int LLONG_MAX ;
 int __filemap_fdatawrite_range (struct address_space*,int ,int ,int) ;

__attribute__((used)) static inline int __filemap_fdatawrite(struct address_space *mapping,
 int sync_mode)
{
 return __filemap_fdatawrite_range(mapping, 0, LLONG_MAX, sync_mode);
}
