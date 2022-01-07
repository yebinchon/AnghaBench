
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; scalar_t__* c_cc; } ;


 int ECHO ;
 int ICANON ;
 int TCSANOW ;
 size_t VMIN ;
 size_t VTIME ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;

void set_term_quiet_input(struct termios *old)
{
 struct termios tc;

 tcgetattr(0, old);
 tc = *old;
 tc.c_lflag &= ~(ICANON | ECHO);
 tc.c_cc[VMIN] = 0;
 tc.c_cc[VTIME] = 0;
 tcsetattr(0, TCSANOW, &tc);
}
