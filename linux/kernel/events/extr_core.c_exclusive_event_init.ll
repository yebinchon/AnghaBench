; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_exclusive_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_exclusive_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.pmu* }
%struct.pmu = type { i32 }

@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @exclusive_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exclusive_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  %7 = load %struct.pmu*, %struct.pmu** %6, align 8
  store %struct.pmu* %7, %struct.pmu** %4, align 8
  %8 = load %struct.pmu*, %struct.pmu** %4, align 8
  %9 = call i32 @is_exclusive_pmu(%struct.pmu* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.pmu*, %struct.pmu** %4, align 8
  %21 = getelementptr inbounds %struct.pmu, %struct.pmu* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc_unless_negative(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %19
  br label %37

28:                                               ; preds = %12
  %29 = load %struct.pmu*, %struct.pmu** %4, align 8
  %30 = getelementptr inbounds %struct.pmu, %struct.pmu* %29, i32 0, i32 0
  %31 = call i32 @atomic_dec_unless_positive(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %27
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %33, %24, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @is_exclusive_pmu(%struct.pmu*) #1

declare dso_local i32 @atomic_inc_unless_negative(i32*) #1

declare dso_local i32 @atomic_dec_unless_positive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
