
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 char* get_events_file (char*) ;
 int output_fd ;
 int pr_debug (char*,...) ;
 int put_events_file (char*) ;
 scalar_t__ record_file (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int record_header_files(void)
{
 char *path = get_events_file("header_page");
 struct stat st;
 int err = -EIO;

 if (!path) {
  pr_debug("can't get tracing/events/header_page");
  return -ENOMEM;
 }

 if (stat(path, &st) < 0) {
  pr_debug("can't read '%s'", path);
  goto out;
 }

 if (write(output_fd, "header_page", 12) != 12) {
  pr_debug("can't write header_page\n");
  goto out;
 }

 if (record_file(path, 8) < 0) {
  pr_debug("can't record header_page file\n");
  goto out;
 }

 put_events_file(path);

 path = get_events_file("header_event");
 if (!path) {
  pr_debug("can't get tracing/events/header_event");
  err = -ENOMEM;
  goto out;
 }

 if (stat(path, &st) < 0) {
  pr_debug("can't read '%s'", path);
  goto out;
 }

 if (write(output_fd, "header_event", 13) != 13) {
  pr_debug("can't write header_event\n");
  goto out;
 }

 if (record_file(path, 8) < 0) {
  pr_debug("can't record header_event file\n");
  goto out;
 }

 err = 0;
out:
 put_events_file(path);
 return err;
}
