
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; struct augmented_arg* args; } ;
struct syscall_arg {TYPE_1__ augmented; } ;
struct augmented_arg {int size; int value; } ;


 size_t scnprintf (char*,size_t,char*,int,int ) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_augmented_string(struct syscall_arg *arg, char *bf, size_t size)
{
 struct augmented_arg *augmented_arg = arg->augmented.args;
 size_t printed = scnprintf(bf, size, "\"%.*s\"", augmented_arg->size, augmented_arg->value);




 int consumed = sizeof(*augmented_arg) + augmented_arg->size;

 arg->augmented.args = ((void *)arg->augmented.args) + consumed;
 arg->augmented.size -= consumed;

 return printed;
}
