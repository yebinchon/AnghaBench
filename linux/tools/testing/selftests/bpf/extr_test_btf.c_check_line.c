
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHECK (int,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int check_line(const char *expected_line, int nexpected_line,
        int expected_line_len, const char *line)
{
 if (CHECK(nexpected_line == expected_line_len,
    "expected_line is too long"))
  return -1;

 if (strcmp(expected_line, line)) {
  fprintf(stderr, "unexpected pprint output\n");
  fprintf(stderr, "expected: %s", expected_line);
  fprintf(stderr, "    read: %s", line);
  return -1;
 }

 return 0;
}
