; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wait_iff_congested.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wait_iff_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@congestion_wqh = common dso_local global i32* null, align 8
@nr_wb_congested = common dso_local global i32* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wait_iff_congested(i32 %0, i64 %1) #0 {
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
  %15 = load i32*, i32** @nr_wb_congested, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = call i32 (...) @cond_resched()
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %24, %25
  %27 = sub i64 %23, %26
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %30, %21
  br label %40

32:                                               ; preds = %2
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %35 = call i32 @prepare_to_wait(i32* %33, i32* @wait, i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @io_schedule_timeout(i64 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @finish_wait(i32* %38, i32* @wait)
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @jiffies_to_usecs(i64 %41)
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @jiffies_to_usecs(i64 %45)
  %47 = call i32 @trace_writeback_wait_iff_congested(i32 %42, i32 %46)
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @io_schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @trace_writeback_wait_iff_congested(i32, i32) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
