; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c_hw_breakpoint_parse.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_hw_breakpoint.c_hw_breakpoint_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i64 }
%struct.arch_hw_breakpoint = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*)* @hw_breakpoint_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_breakpoint_parse(%struct.perf_event* %0, %struct.perf_event_attr* %1, %struct.arch_hw_breakpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca %struct.arch_hw_breakpoint*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store %struct.arch_hw_breakpoint* %2, %struct.arch_hw_breakpoint** %7, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %11 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %12 = call i32 @hw_breakpoint_arch_parse(%struct.perf_event* %9, %struct.perf_event_attr* %10, %struct.arch_hw_breakpoint* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %19 = call i64 @arch_check_bp_in_kernelspace(%struct.arch_hw_breakpoint* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %17
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %33, %26, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @hw_breakpoint_arch_parse(%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*) #1

declare dso_local i64 @arch_check_bp_in_kernelspace(%struct.arch_hw_breakpoint*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
