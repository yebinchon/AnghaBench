
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file ;
typedef int FILE ;


 int clear_history () ;
 int fclose (int *) ;
 char* getenv (char*) ;
 int rl_deprep_terminal () ;
 int snprintf (char*,int,char*,char*) ;
 int * stdin ;
 int * stdout ;
 int try_close_pcap () ;
 int write_history (char*) ;

__attribute__((used)) static void exit_shell(FILE *fin, FILE *fout)
{
 char file[128];

 snprintf(file, sizeof(file), "%s/.bpf_dbg_history", getenv("HOME"));
 write_history(file);

 clear_history();
 rl_deprep_terminal();

 try_close_pcap();

 if (fin != stdin)
  fclose(fin);
 if (fout != stdout)
  fclose(fout);
}
