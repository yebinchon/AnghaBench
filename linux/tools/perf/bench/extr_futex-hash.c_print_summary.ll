; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-hash.c_print_summary.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-hash.c_print_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@throughput_stats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%sAveraged %ld operations/sec (+- %.2f%%), total secs = %d\0A\00", align 1
@silent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@runtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_summary() #0 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  %3 = call i64 @avg_stats(i32* @throughput_stats)
  store i64 %3, i64* %1, align 8
  %4 = call double @stddev_stats(i32* @throughput_stats)
  store double %4, double* %2, align 8
  %5 = load i32, i32* @silent, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %10 = load i64, i64* %1, align 8
  %11 = load double, double* %2, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @rel_stddev_stats(double %11, i64 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @runtime, i32 0, i32 0), align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %10, i32 %13, i32 %15)
  ret void
}

declare dso_local i64 @avg_stats(i32*) #1

declare dso_local double @stddev_stats(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @rel_stddev_stats(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
