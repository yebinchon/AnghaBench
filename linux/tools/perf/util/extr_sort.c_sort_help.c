
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int INDENT ;
 int add_hpp_sort_string (struct strbuf*,int ,int ,int*) ;
 int add_sort_string (struct strbuf*,int ,int ,int*) ;
 int bstack_sort_dimensions ;
 int common_sort_dimensions ;
 int hpp_sort_dimensions ;
 int memory_sort_dimensions ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;

const char *sort_help(const char *prefix)
{
 struct strbuf sb;
 char *s;
 int len = strlen(prefix) + INDENT;

 strbuf_init(&sb, 300);
 strbuf_addstr(&sb, prefix);
 add_hpp_sort_string(&sb, hpp_sort_dimensions,
       ARRAY_SIZE(hpp_sort_dimensions), &len);
 add_sort_string(&sb, common_sort_dimensions,
       ARRAY_SIZE(common_sort_dimensions), &len);
 add_sort_string(&sb, bstack_sort_dimensions,
       ARRAY_SIZE(bstack_sort_dimensions), &len);
 add_sort_string(&sb, memory_sort_dimensions,
       ARRAY_SIZE(memory_sort_dimensions), &len);
 s = strbuf_detach(&sb, ((void*)0));
 strbuf_release(&sb);
 return s;
}
