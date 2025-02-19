; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_enable_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_enable_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@stat_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@evsel_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @enable_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_counters() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stat_config, i32 0, i32 0), align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stat_config, i32 0, i32 0), align 4
  %5 = load i32, i32* @USEC_PER_MSEC, align 4
  %6 = mul nsw i32 %4, %5
  %7 = call i32 @usleep(i32 %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = call i32 @target__none(i32* @target)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stat_config, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @evsel_list, align 4
  %16 = call i32 @evlist__enable(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @target__none(i32*) #1

declare dso_local i32 @evlist__enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
