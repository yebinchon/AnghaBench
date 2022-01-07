
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_stack {int size; char** stack; } ;


 int STK_BLK ;
 int free (char*) ;
 char** realloc (char**,int) ;
 char* strdup (char const*) ;
 int warning (char*) ;

__attribute__((used)) static void add_child(struct func_stack *stack, const char *child, int pos)
{
 int i;

 if (!child)
  return;

 if (pos < stack->size)
  free(stack->stack[pos]);
 else {
  char **ptr;

  ptr = realloc(stack->stack, sizeof(char *) *
         (stack->size + STK_BLK));
  if (!ptr) {
   warning("could not allocate plugin memory\n");
   return;
  }

  stack->stack = ptr;

  for (i = stack->size; i < stack->size + STK_BLK; i++)
   stack->stack[i] = ((void*)0);
  stack->size += STK_BLK;
 }

 stack->stack[pos] = strdup(child);
}
