
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pretty; char sep; scalar_t__ depth; int * out; } ;
typedef TYPE_1__ json_writer_t ;
typedef int FILE ;


 TYPE_1__* malloc (int) ;

json_writer_t *jsonw_new(FILE *f)
{
 json_writer_t *self = malloc(sizeof(*self));
 if (self) {
  self->out = f;
  self->depth = 0;
  self->pretty = 0;
  self->sep = '\0';
 }
 return self;
}
