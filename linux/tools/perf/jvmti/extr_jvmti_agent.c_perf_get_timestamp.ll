; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_perf_get_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_perf_get_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@use_arch_timestamp = common dso_local global i64 0, align 8
@perf_clk_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @perf_get_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_get_timestamp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @use_arch_timestamp, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @get_arch_timestamp()
  store i32 %7, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @perf_clk_id, align 4
  %10 = call i32 @clock_gettime(i32 %9, %struct.timespec* %2)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

14:                                               ; preds = %8
  %15 = call i32 @timespec_to_ns(%struct.timespec* %2)
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %13, %6
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @get_arch_timestamp(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @timespec_to_ns(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
