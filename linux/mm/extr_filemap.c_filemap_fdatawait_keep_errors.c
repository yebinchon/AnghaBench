
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int dummy; } ;


 int LLONG_MAX ;
 int __filemap_fdatawait_range (struct address_space*,int ,int ) ;
 int filemap_check_and_keep_errors (struct address_space*) ;

int filemap_fdatawait_keep_errors(struct address_space *mapping)
{
 __filemap_fdatawait_range(mapping, 0, LLONG_MAX);
 return filemap_check_and_keep_errors(mapping);
}
