
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 char* LOGFILE_NAME ;
 int exit (int) ;
 int fopen (char*,char*) ;
 int fork () ;
 int fprintf (int ,char*,char*) ;
 int init_mic_list () ;
 int logfp ;
 int mpsslog (char*,...) ;
 char* myname ;
 int start_daemon () ;
 int stderr ;

int
main(int argc, char *argv[])
{
 int cnt;
 pid_t pid;

 myname = argv[0];

 logfp = fopen(LOGFILE_NAME, "a+");
 if (!logfp) {
  fprintf(stderr, "cannot open logfile '%s'\n", LOGFILE_NAME);
  exit(1);
 }
 pid = fork();
 switch (pid) {
 case 0:
  break;
 case -1:
  exit(2);
 default:
  exit(0);
 }

 mpsslog("MIC Daemon start\n");

 cnt = init_mic_list();
 if (cnt == 0) {
  mpsslog("MIC module not loaded\n");
  exit(3);
 }
 mpsslog("MIC found %d devices\n", cnt);

 start_daemon();

 exit(0);
}
