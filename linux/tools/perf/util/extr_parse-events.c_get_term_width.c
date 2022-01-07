
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {scalar_t__ ws_col; } ;


 scalar_t__ MAX_WIDTH ;
 int get_term_dimensions (struct winsize*) ;

__attribute__((used)) static int get_term_width(void)
{
 struct winsize ws;

 get_term_dimensions(&ws);
 return ws.ws_col > MAX_WIDTH ? MAX_WIDTH : ws.ws_col;
}
