; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"usage: ./bench\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c" -l, --load=<long int>\09\09initial load time in us\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c" -s, --sleep=<long int>\09\09initial sleep time in us\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c" -x, --load-step=<long int>\09time to be added to load time, in us\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c" -y, --sleep-step=<long int>\09time to be added to sleep time, in us\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c" -c, --cpu=<cpu #>\09\09\09CPU Nr. to use, starting at 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c" -p, --prio=<priority>\09\09\09scheduler priority, HIGH, LOW or DEFAULT\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c" -g, --governor=<governor>\09\09cpufreq governor to test\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c" -n, --cycles=<int>\09\09\09load/sleep cycles\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c" -r, --rounds<int>\09\09\09load/sleep rounds\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c" -f, --file=<configfile>\09\09config file to use\0A\00", align 1
@.str.12 = private unnamed_addr constant [88 x i8] c" -o, --output=<dir>\09\09\09output path. Filename will be OUTPUTPATH/benchmark_TIMESTAMP.log\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" -v, --verbose\09\09\09\09verbose output on/off\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c" -h, --help\09\09\09\09Print this help screen\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.12, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
