
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_parser {scalar_t__ idx; } ;



__attribute__((used)) static inline bool trace_parser_loaded(struct trace_parser *parser)
{
 return (parser->idx != 0);
}
