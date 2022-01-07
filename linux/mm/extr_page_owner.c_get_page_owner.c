
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void page_owner ;
struct page_ext {int dummy; } ;
struct TYPE_2__ {int offset; } ;


 TYPE_1__ page_owner_ops ;

__attribute__((used)) static inline struct page_owner *get_page_owner(struct page_ext *page_ext)
{
 return (void *)page_ext + page_owner_ops.offset;
}
