
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ depth; int out; } ;
typedef TYPE_1__ json_writer_t ;


 int assert (int) ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 int free (TYPE_1__*) ;

void jsonw_destroy(json_writer_t **self_p)
{
 json_writer_t *self = *self_p;

 assert(self->depth == 0);
 fputs("\n", self->out);
 fflush(self->out);
 free(self);
 *self_p = ((void*)0);
}
