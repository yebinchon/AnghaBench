; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_trigger_dyntick_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_trigger_dyntick_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_base = type { i32, i32, i32 }
%struct.timer_list = type { i32, i32 }

@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_base*, %struct.timer_list*)* @trigger_dyntick_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_dyntick_cpu(%struct.timer_base* %0, %struct.timer_list* %1) #0 {
  %3 = alloca %struct.timer_base*, align 8
  %4 = alloca %struct.timer_list*, align 8
  store %struct.timer_base* %0, %struct.timer_base** %3, align 8
  store %struct.timer_list* %1, %struct.timer_list** %4, align 8
  %5 = call i32 (...) @is_timers_nohz_active()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %53

8:                                                ; preds = %2
  %9 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %10 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %17 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @tick_nohz_full_cpu(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %23 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wake_up_nohz_cpu(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  br label %53

27:                                               ; preds = %8
  %28 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %29 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %53

33:                                               ; preds = %27
  %34 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %35 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %38 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @time_after_eq(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %33
  %44 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %45 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %48 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  %50 = getelementptr inbounds %struct.timer_base, %struct.timer_base* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wake_up_nohz_cpu(i32 %51)
  br label %53

53:                                               ; preds = %43, %42, %32, %26, %7
  ret void
}

declare dso_local i32 @is_timers_nohz_active(...) #1

declare dso_local i64 @tick_nohz_full_cpu(i32) #1

declare dso_local i32 @wake_up_nohz_cpu(i32) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
