
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_parser {int cont; scalar_t__ idx; } ;



__attribute__((used)) static inline void trace_parser_clear(struct trace_parser *parser)
{
 parser->cont = 0;
 parser->idx = 0;
}
