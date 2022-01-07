
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_parser {int * buffer; } ;


 int kfree (int *) ;

void trace_parser_put(struct trace_parser *parser)
{
 kfree(parser->buffer);
 parser->buffer = ((void*)0);
}
