
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YY_BUFFER_STATE ;


 int parse_events__delete_buffer (int ,void*) ;
 int parse_events__flush_buffer (int ,void*) ;
 int parse_events__scan_string (char const*,void*) ;
 int parse_events_debug ;
 int parse_events_lex_destroy (void*) ;
 int parse_events_lex_init_extra (int,void**) ;
 int parse_events_parse (void*,void*) ;

__attribute__((used)) static int parse_events__scanner(const char *str, void *parse_state, int start_token)
{
 YY_BUFFER_STATE buffer;
 void *scanner;
 int ret;

 ret = parse_events_lex_init_extra(start_token, &scanner);
 if (ret)
  return ret;

 buffer = parse_events__scan_string(str, scanner);




 ret = parse_events_parse(parse_state, scanner);

 parse_events__flush_buffer(buffer, scanner);
 parse_events__delete_buffer(buffer, scanner);
 parse_events_lex_destroy(scanner);
 return ret;
}
