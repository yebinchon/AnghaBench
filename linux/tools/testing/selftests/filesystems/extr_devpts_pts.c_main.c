
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLONE_NEWNS ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int KSFT_SKIP ;
 int MS_PRIVATE ;
 int MS_REC ;
 int STDIN_FILENO ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int isatty (int ) ;
 int mount (char*,char*,int *,int,int ) ;
 int stderr ;
 int unshare (int ) ;
 int verify_invalid_ptmx_bind_mount () ;
 int verify_non_standard_devpts_mount () ;
 int verify_ptmx_bind_mount () ;

int main(int argc, char *argv[])
{
 int ret;

 if (!isatty(STDIN_FILENO)) {
  fprintf(stderr, "Standard input file descriptor is not attached "
    "to a terminal. Skipping test\n");
  exit(KSFT_SKIP);
 }

 ret = unshare(CLONE_NEWNS);
 if (ret < 0) {
  fprintf(stderr, "Failed to unshare mount namespace\n");
  exit(EXIT_FAILURE);
 }

 ret = mount("", "/", ((void*)0), MS_PRIVATE | MS_REC, 0);
 if (ret < 0) {
  fprintf(stderr, "Failed to make \"/\" MS_PRIVATE in new mount "
    "namespace\n");
  exit(EXIT_FAILURE);
 }

 ret = verify_ptmx_bind_mount();
 if (ret < 0)
  exit(EXIT_FAILURE);

 ret = verify_invalid_ptmx_bind_mount();
 if (ret < 0)
  exit(EXIT_FAILURE);

 ret = verify_non_standard_devpts_mount();
 if (ret < 0)
  exit(EXIT_FAILURE);

 exit(EXIT_SUCCESS);
}
