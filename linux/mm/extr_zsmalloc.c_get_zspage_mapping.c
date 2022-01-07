
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {scalar_t__ magic; int fullness; unsigned int class; } ;
typedef enum fullness_group { ____Placeholder_fullness_group } fullness_group ;


 int BUG_ON (int) ;
 scalar_t__ ZSPAGE_MAGIC ;

__attribute__((used)) static void get_zspage_mapping(struct zspage *zspage,
    unsigned int *class_idx,
    enum fullness_group *fullness)
{
 BUG_ON(zspage->magic != ZSPAGE_MAGIC);

 *fullness = zspage->fullness;
 *class_idx = zspage->class;
}
