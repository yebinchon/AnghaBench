; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__getcpuid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu__getcpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i32 }

@perf_pmu__getcpuid.printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"PERF_CPUID\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Using CPUID %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.perf_pmu*)* @perf_pmu__getcpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @perf_pmu__getcpuid(%struct.perf_pmu* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_pmu*, align 8
  %4 = alloca i8*, align 8
  store %struct.perf_pmu* %0, %struct.perf_pmu** %3, align 8
  %5 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.perf_pmu*, %struct.perf_pmu** %3, align 8
  %16 = call i8* @get_cpuid_str(%struct.perf_pmu* %15)
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8* null, i8** %2, align 8
  br label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @perf_pmu__getcpuid.printed, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 1, i32* @perf_pmu__getcpuid.printed, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @get_cpuid_str(%struct.perf_pmu*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
