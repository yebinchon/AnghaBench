
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_request {scalar_t__ is_set; } ;
struct mbox_reply {int status; } ;
typedef int req ;
typedef int reply ;


 int debug_fd ;
 int dprintf (int ,char*,int) ;
 int handle_get_cmd (struct mbox_request*) ;
 int handle_set_cmd (struct mbox_request*) ;
 int read (int ,struct mbox_request*,int) ;
 int write (int,struct mbox_reply*,int) ;

__attribute__((used)) static void loop(void)
{
 while (1) {
  struct mbox_request req;
  struct mbox_reply reply;
  int n;

  n = read(0, &req, sizeof(req));
  if (n != sizeof(req)) {
   dprintf(debug_fd, "invalid request %d\n", n);
   return;
  }

  reply.status = req.is_set ?
   handle_set_cmd(&req) :
   handle_get_cmd(&req);

  n = write(1, &reply, sizeof(reply));
  if (n != sizeof(reply)) {
   dprintf(debug_fd, "reply failed %d\n", n);
   return;
  }
 }
}
