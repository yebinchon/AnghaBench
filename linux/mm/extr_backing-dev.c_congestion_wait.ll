; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_congestion_wait.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_congestion_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@congestion_wqh = common dso_local global i32* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @congestion_wait(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  %11 = load i32*, i32** @congestion_wqh, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %17 = call i32 @prepare_to_wait(i32* %15, i32* @wait, i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @io_schedule_timeout(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @finish_wait(i32* %20, i32* @wait)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @jiffies_to_usecs(i64 %22)
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %24, %25
  %27 = call i32 @jiffies_to_usecs(i64 %26)
  %28 = call i32 @trace_writeback_congestion_wait(i32 %23, i32 %27)
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @io_schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @trace_writeback_congestion_wait(i32, i32) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
