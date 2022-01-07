
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ buf; } ;
struct child_process {char const** argv; int err; int stdout_to_stderr; } ;
typedef int ec_process ;


 struct strbuf STRBUF_INIT ;
 int atoi (scalar_t__) ;
 int close (int) ;
 int finish_command (struct child_process*) ;
 int fprintf (int ,char*,...) ;
 int memset (struct child_process*,int ,int) ;
 scalar_t__ start_command (struct child_process*) ;
 int stderr ;
 scalar_t__ strbuf_read (struct strbuf*,int,int) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strlen (char*) ;
 int strstarts (scalar_t__,char*) ;

__attribute__((used)) static int check_emacsclient_version(void)
{
 struct strbuf buffer = STRBUF_INIT;
 struct child_process ec_process;
 const char *argv_ec[] = { "emacsclient", "--version", ((void*)0) };
 int version;
 int ret = -1;


 memset(&ec_process, 0, sizeof(ec_process));
 ec_process.argv = argv_ec;
 ec_process.err = -1;
 ec_process.stdout_to_stderr = 1;
 if (start_command(&ec_process)) {
  fprintf(stderr, "Failed to start emacsclient.\n");
  return -1;
 }
 if (strbuf_read(&buffer, ec_process.err, 20) < 0) {
  fprintf(stderr, "Failed to read emacsclient version\n");
  goto out;
 }
 close(ec_process.err);





 finish_command(&ec_process);

 if (!strstarts(buffer.buf, "emacsclient")) {
  fprintf(stderr, "Failed to parse emacsclient version.\n");
  goto out;
 }

 version = atoi(buffer.buf + strlen("emacsclient"));

 if (version < 22) {
  fprintf(stderr,
   "emacsclient version '%d' too old (< 22).\n",
   version);
 } else
  ret = 0;
out:
 strbuf_release(&buffer);
 return ret;
}
