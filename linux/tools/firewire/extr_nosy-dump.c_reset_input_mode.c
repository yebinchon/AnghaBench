
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int TCSANOW ;
 int saved_attributes ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void
reset_input_mode(void)
{
 tcsetattr(STDIN_FILENO, TCSANOW, &saved_attributes);
}
