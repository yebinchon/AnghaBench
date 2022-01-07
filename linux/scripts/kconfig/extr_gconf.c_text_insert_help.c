
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;
struct gstr {int dummy; } ;
typedef int GtkTextIter ;
typedef int GtkTextBuffer ;


 int GTK_TEXT_VIEW (int ) ;
 int gtk_text_buffer_delete (int *,int *,int *) ;
 int gtk_text_buffer_get_bounds (int *,int *,int *) ;
 int gtk_text_buffer_get_end_iter (int *,int *) ;
 int gtk_text_buffer_insert_at_cursor (int *,char*,int) ;
 int gtk_text_buffer_insert_with_tags (int *,int *,char const*,int,int ,int *) ;
 int * gtk_text_view_get_buffer (int ) ;
 int gtk_text_view_set_left_margin (int ,int) ;
 int menu_get_ext_help (struct menu*,struct gstr*) ;
 char* menu_get_prompt (struct menu*) ;
 int str_free (struct gstr*) ;
 char const* str_get (struct gstr*) ;
 struct gstr str_new () ;
 int tag1 ;
 int tag2 ;
 int text_w ;

__attribute__((used)) static void text_insert_help(struct menu *menu)
{
 GtkTextBuffer *buffer;
 GtkTextIter start, end;
 const char *prompt = menu_get_prompt(menu);
 struct gstr help = str_new();

 menu_get_ext_help(menu, &help);

 buffer = gtk_text_view_get_buffer(GTK_TEXT_VIEW(text_w));
 gtk_text_buffer_get_bounds(buffer, &start, &end);
 gtk_text_buffer_delete(buffer, &start, &end);
 gtk_text_view_set_left_margin(GTK_TEXT_VIEW(text_w), 15);

 gtk_text_buffer_get_end_iter(buffer, &end);
 gtk_text_buffer_insert_with_tags(buffer, &end, prompt, -1, tag1,
      ((void*)0));
 gtk_text_buffer_insert_at_cursor(buffer, "\n\n", 2);
 gtk_text_buffer_get_end_iter(buffer, &end);
 gtk_text_buffer_insert_with_tags(buffer, &end, str_get(&help), -1, tag2,
      ((void*)0));
 str_free(&help);
}
