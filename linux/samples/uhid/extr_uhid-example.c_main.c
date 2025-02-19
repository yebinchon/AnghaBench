
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int* c_cc; int c_lflag; } ;
struct pollfd {int fd; int events; int revents; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int ICANON ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int POLLHUP ;
 int POLLIN ;
 int STDIN_FILENO ;
 int TCSANOW ;
 size_t VMIN ;
 int close (int) ;
 int create (int) ;
 int destroy (int) ;
 int event (int) ;
 int fprintf (int ,char*,...) ;
 int keyboard (int) ;
 int open (char const*,int) ;
 int poll (struct pollfd*,int,int) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

int main(int argc, char **argv)
{
 int fd;
 const char *path = "/dev/uhid";
 struct pollfd pfds[2];
 int ret;
 struct termios state;

 ret = tcgetattr(STDIN_FILENO, &state);
 if (ret) {
  fprintf(stderr, "Cannot get tty state\n");
 } else {
  state.c_lflag &= ~ICANON;
  state.c_cc[VMIN] = 1;
  ret = tcsetattr(STDIN_FILENO, TCSANOW, &state);
  if (ret)
   fprintf(stderr, "Cannot set tty state\n");
 }

 if (argc >= 2) {
  if (!strcmp(argv[1], "-h") || !strcmp(argv[1], "--help")) {
   fprintf(stderr, "Usage: %s [%s]\n", argv[0], path);
   return EXIT_SUCCESS;
  } else {
   path = argv[1];
  }
 }

 fprintf(stderr, "Open uhid-cdev %s\n", path);
 fd = open(path, O_RDWR | O_CLOEXEC);
 if (fd < 0) {
  fprintf(stderr, "Cannot open uhid-cdev %s: %m\n", path);
  return EXIT_FAILURE;
 }

 fprintf(stderr, "Create uhid device\n");
 ret = create(fd);
 if (ret) {
  close(fd);
  return EXIT_FAILURE;
 }

 pfds[0].fd = STDIN_FILENO;
 pfds[0].events = POLLIN;
 pfds[1].fd = fd;
 pfds[1].events = POLLIN;

 fprintf(stderr, "Press 'q' to quit...\n");
 while (1) {
  ret = poll(pfds, 2, -1);
  if (ret < 0) {
   fprintf(stderr, "Cannot poll for fds: %m\n");
   break;
  }
  if (pfds[0].revents & POLLHUP) {
   fprintf(stderr, "Received HUP on stdin\n");
   break;
  }
  if (pfds[1].revents & POLLHUP) {
   fprintf(stderr, "Received HUP on uhid-cdev\n");
   break;
  }

  if (pfds[0].revents & POLLIN) {
   ret = keyboard(fd);
   if (ret)
    break;
  }
  if (pfds[1].revents & POLLIN) {
   ret = event(fd);
   if (ret)
    break;
  }
 }

 fprintf(stderr, "Destroy uhid device\n");
 destroy(fd);
 return EXIT_SUCCESS;
}
