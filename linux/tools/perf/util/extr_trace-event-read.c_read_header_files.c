
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int BUFSIZ ;
 scalar_t__ do_read (char*,int) ;
 int free (char*) ;
 char* malloc (unsigned long long) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int pr_debug (char*) ;
 unsigned long long read8 (struct tep_handle*) ;
 int skip (unsigned long long) ;
 int tep_get_header_page_size (struct tep_handle*) ;
 int tep_get_long_size (struct tep_handle*) ;
 int tep_parse_header_page (struct tep_handle*,char*,unsigned long long,int ) ;
 int tep_set_long_size (struct tep_handle*,int ) ;

__attribute__((used)) static int read_header_files(struct tep_handle *pevent)
{
 unsigned long long size;
 char *header_page;
 char buf[BUFSIZ];
 int ret = 0;

 if (do_read(buf, 12) < 0)
  return -1;

 if (memcmp(buf, "header_page", 12) != 0) {
  pr_debug("did not read header page");
  return -1;
 }

 size = read8(pevent);

 header_page = malloc(size);
 if (header_page == ((void*)0))
  return -1;

 if (do_read(header_page, size) < 0) {
  pr_debug("did not read header page");
  free(header_page);
  return -1;
 }

 if (!tep_parse_header_page(pevent, header_page, size,
       tep_get_long_size(pevent))) {




  tep_set_long_size(pevent, tep_get_header_page_size(pevent));
 }
 free(header_page);

 if (do_read(buf, 13) < 0)
  return -1;

 if (memcmp(buf, "header_event", 13) != 0) {
  pr_debug("did not read header event");
  return -1;
 }

 size = read8(pevent);
 skip(size);

 return ret;
}
