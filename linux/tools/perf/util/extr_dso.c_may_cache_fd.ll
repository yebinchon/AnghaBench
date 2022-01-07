; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_may_cache_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_may_cache_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fd_limit = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@dso__data_open_cnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @may_cache_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_cache_fd() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @fd_limit, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @get_fd_limit()
  store i64 %5, i64* @fd_limit, align 8
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i64, i64* @fd_limit, align 8
  %8 = load i64, i64* @RLIM_INFINITY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 1, i32* %1, align 4
  br label %16

11:                                               ; preds = %6
  %12 = load i64, i64* @fd_limit, align 8
  %13 = load i64, i64* @dso__data_open_cnt, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @get_fd_limit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
