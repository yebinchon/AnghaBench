
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {scalar_t__ key; scalar_t__ target; scalar_t__ code; } ;



__attribute__((used)) static void jump_label_swap(void *a, void *b, int size)
{
 long delta = (unsigned long)a - (unsigned long)b;
 struct jump_entry *jea = a;
 struct jump_entry *jeb = b;
 struct jump_entry tmp = *jea;

 jea->code = jeb->code - delta;
 jea->target = jeb->target - delta;
 jea->key = jeb->key - delta;

 jeb->code = tmp.code + delta;
 jeb->target = tmp.target + delta;
 jeb->key = tmp.key + delta;
}
