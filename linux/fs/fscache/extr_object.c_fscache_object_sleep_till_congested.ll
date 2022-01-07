; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_sleep_till_congested.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_object_sleep_till_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fscache_object_cong_wait = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscache_object_sleep_till_congested(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  %5 = call i32* @this_cpu_ptr(i32* @fscache_object_cong_wait)
  store i32* %5, i32** %4, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  %8 = call i32 (...) @fscache_object_congested()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @add_wait_queue_exclusive(i32* %12, i32* @wait)
  %14 = call i32 (...) @fscache_object_congested()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @schedule_timeout(i64 %18)
  %20 = load i64*, i64** %3, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @finish_wait(i32* %22, i32* @wait)
  %24 = call i32 (...) @fscache_object_congested()
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32* @this_cpu_ptr(i32*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @fscache_object_congested(...) #1

declare dso_local i32 @add_wait_queue_exclusive(i32*, i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
