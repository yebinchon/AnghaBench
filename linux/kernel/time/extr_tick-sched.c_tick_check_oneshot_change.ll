; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_tick-sched.c_tick_check_oneshot_change.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_tick-sched.c_tick_check_oneshot_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tick_sched = type { i64, i32 }

@tick_cpu_sched = common dso_local global i32 0, align 4
@NOHZ_MODE_INACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_check_oneshot_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tick_sched*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.tick_sched* @this_cpu_ptr(i32* @tick_cpu_sched)
  store %struct.tick_sched* %5, %struct.tick_sched** %4, align 8
  %6 = load %struct.tick_sched*, %struct.tick_sched** %4, align 8
  %7 = getelementptr inbounds %struct.tick_sched, %struct.tick_sched* %6, i32 0, i32 1
  %8 = call i32 @test_and_clear_bit(i32 0, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.tick_sched*, %struct.tick_sched** %4, align 8
  %13 = getelementptr inbounds %struct.tick_sched, %struct.tick_sched* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NOHZ_MODE_INACTIVE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %11
  %19 = call i32 (...) @timekeeping_valid_for_hres()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 (...) @tick_is_oneshot_available()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* %2, align 4
  br label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @tick_nohz_switch_to_nohz()
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %28, %24, %17, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.tick_sched* @this_cpu_ptr(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @timekeeping_valid_for_hres(...) #1

declare dso_local i32 @tick_is_oneshot_available(...) #1

declare dso_local i32 @tick_nohz_switch_to_nohz(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
