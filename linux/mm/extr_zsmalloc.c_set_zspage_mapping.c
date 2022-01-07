
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {unsigned int class; int fullness; } ;
typedef enum fullness_group { ____Placeholder_fullness_group } fullness_group ;



__attribute__((used)) static void set_zspage_mapping(struct zspage *zspage,
    unsigned int class_idx,
    enum fullness_group fullness)
{
 zspage->class = class_idx;
 zspage->fullness = fullness;
}
