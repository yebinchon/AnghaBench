
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_name_union {scalar_t__ filename; scalar_t__ group; } ;



__attribute__((used)) static inline bool tomoyo_same_name_union
(const struct tomoyo_name_union *a, const struct tomoyo_name_union *b)
{
 return a->filename == b->filename && a->group == b->group;
}
