
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {scalar_t__ bits; } ;
struct TYPE_2__ {scalar_t__ full_children; scalar_t__ empty_children; } ;


 scalar_t__ KEYLENGTH ;
 scalar_t__ KEY_MAX ;
 unsigned long child_length (struct key_vector*) ;
 TYPE_1__* tn_info (struct key_vector*) ;

__attribute__((used)) static inline bool should_collapse(struct key_vector *tn)
{
 unsigned long used = child_length(tn);

 used -= tn_info(tn)->empty_children;


 if ((tn->bits == KEYLENGTH) && tn_info(tn)->full_children)
  used -= KEY_MAX;


 return used < 2;
}
