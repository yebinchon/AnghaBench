__attribute__((used)) static void FUNC0(char *s, int start, int max, int corr)
{
	int column = start;
	int n;

	while (*s) {
		int wlen = strcspn(s, " \t");

		if (column + wlen >= max && column > start) {
			printf("\n%*s", start, "");
			column = start + corr;
		}
		n = FUNC0("%s%.*s", column > start ? " " : "", wlen, s);
		if (n <= 0)
			break;
		s += wlen;
		column += n;
		s = FUNC0(s);
	}
}