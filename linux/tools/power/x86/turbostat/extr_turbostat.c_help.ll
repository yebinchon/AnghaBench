; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_help.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1382 x i8] c"Usage: turbostat [OPTIONS][(--interval seconds) | COMMAND ...]\0A\0ATurbostat forks the specified COMMAND and prints statistics\0Awhen COMMAND completes.\0AIf no COMMAND is specified, turbostat wakes every 5-seconds\0Ato print statistics, until interrupted.\0A  -a, --add\09add a counter\0A\09\09  eg. --add msr0x10,u64,cpu,delta,MY_TSC\0A  -c, --cpu\09cpu-set\09limit output to summary plus cpu-set:\0A\09\09  {core | package | j,k,l..m,n-p }\0A  -d, --debug\09displays usec, Time_Of_Day_Seconds and more debugging\0A  -D, --Dump\09displays the raw counter values\0A  -e, --enable\09[all | column]\0A\09\09shows all or the specified disabled column\0A  -H, --hide [column|column,column,...]\0A\09\09hide the specified column(s)\0A  -i, --interval sec.subsec\0A\09\09Override default 5-second measurement interval\0A  -J, --Joules\09displays energy in Joules instead of Watts\0A  -l, --list\09list column headers only\0A  -n, --num_iterations num\0A\09\09number of the measurement iterations\0A  -o, --out file\0A\09\09create or truncate \22file\22 for all output\0A  -q, --quiet\09skip decoding system configuration header\0A  -s, --show [column|column,column,...]\0A\09\09show only the specified column(s)\0A  -S, --Summary\0A\09\09limits output to 1-line system summary per interval\0A  -T, --TCC temperature\0A\09\09sets the Thermal Control Circuit temperature in\0A\09\09  degrees Celsius\0A  -h, --help\09print this help message\0A  -v, --version\09print version information\0A\0AFor more help, run \22man turbostat\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help() #0 {
  %1 = load i32, i32* @outf, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1382 x i8], [1382 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
