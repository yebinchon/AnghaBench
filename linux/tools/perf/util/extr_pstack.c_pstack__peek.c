
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstack {int top; void** entries; } ;



void *pstack__peek(struct pstack *pstack)
{
 if (pstack->top == 0)
  return ((void*)0);
 return pstack->entries[pstack->top - 1];
}
