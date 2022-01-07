
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; int* c_cc; } ;


 int ECHO ;
 int EXIT_FAILURE ;
 int ICANON ;
 int STDIN_FILENO ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 int atexit (int ) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int isatty (int ) ;
 int reset_input_mode ;
 struct termios saved_attributes ;
 int stderr ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void
set_input_mode(void)
{
 struct termios tattr;


 if (!isatty(STDIN_FILENO)) {
  fprintf(stderr, "Not a terminal.\n");
  exit(EXIT_FAILURE);
 }


 tcgetattr(STDIN_FILENO, &saved_attributes);
 atexit(reset_input_mode);


 tcgetattr(STDIN_FILENO, &tattr);
 tattr.c_lflag &= ~(ICANON|ECHO);
 tattr.c_cc[VMIN] = 1;
 tattr.c_cc[VTIME] = 0;
 tcsetattr(STDIN_FILENO, TCSAFLUSH, &tattr);
}
