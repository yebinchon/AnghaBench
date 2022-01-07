; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_get_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_hrtimer.c___hrtimer_get_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer_cpu_base = type { i32, %struct.hrtimer*, %struct.hrtimer*, i32 }
%struct.hrtimer = type { i32 }

@KTIME_MAX = common dso_local global i32 0, align 4
@HRTIMER_ACTIVE_SOFT = common dso_local global i32 0, align 4
@HRTIMER_ACTIVE_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer_cpu_base*, i32)* @__hrtimer_get_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hrtimer_get_next_event(%struct.hrtimer_cpu_base* %0, i32 %1) #0 {
  %3 = alloca %struct.hrtimer_cpu_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hrtimer*, align 8
  %7 = alloca i32, align 4
  store %struct.hrtimer_cpu_base* %0, %struct.hrtimer_cpu_base** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.hrtimer* null, %struct.hrtimer** %6, align 8
  %8 = load i32, i32* @KTIME_MAX, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %10 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HRTIMER_ACTIVE_SOFT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %20 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HRTIMER_ACTIVE_SOFT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %25 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %24, i32 0, i32 2
  store %struct.hrtimer* null, %struct.hrtimer** %25, align 8
  %26 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @KTIME_MAX, align 4
  %29 = call i32 @__hrtimer_next_event_base(%struct.hrtimer_cpu_base* %26, i32* null, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %31 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %30, i32 0, i32 2
  %32 = load %struct.hrtimer*, %struct.hrtimer** %31, align 8
  store %struct.hrtimer* %32, %struct.hrtimer** %6, align 8
  br label %33

33:                                               ; preds = %18, %13, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HRTIMER_ACTIVE_HARD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %40 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HRTIMER_ACTIVE_HARD, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.hrtimer*, %struct.hrtimer** %6, align 8
  %45 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %46 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %45, i32 0, i32 1
  store %struct.hrtimer* %44, %struct.hrtimer** %46, align 8
  %47 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @__hrtimer_next_event_base(%struct.hrtimer_cpu_base* %47, i32* null, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %38, %33
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @__hrtimer_next_event_base(%struct.hrtimer_cpu_base*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
