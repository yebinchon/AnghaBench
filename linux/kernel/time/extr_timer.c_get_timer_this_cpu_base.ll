; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_get_timer_this_cpu_base.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer.c_get_timer_this_cpu_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_base = type { i32 }

@timer_bases = common dso_local global i32* null, align 8
@BASE_STD = common dso_local global i64 0, align 8
@CONFIG_NO_HZ_COMMON = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@BASE_DEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timer_base* (i32)* @get_timer_this_cpu_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timer_base* @get_timer_this_cpu_base(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timer_base*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @timer_bases, align 8
  %5 = load i64, i64* @BASE_STD, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = call %struct.timer_base* @this_cpu_ptr(i32* %6)
  store %struct.timer_base* %7, %struct.timer_base** %3, align 8
  %8 = load i32, i32* @CONFIG_NO_HZ_COMMON, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32*, i32** @timer_bases, align 8
  %18 = load i64, i64* @BASE_DEF, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call %struct.timer_base* @this_cpu_ptr(i32* %19)
  store %struct.timer_base* %20, %struct.timer_base** %3, align 8
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = load %struct.timer_base*, %struct.timer_base** %3, align 8
  ret %struct.timer_base* %22
}

declare dso_local %struct.timer_base* @this_cpu_ptr(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
