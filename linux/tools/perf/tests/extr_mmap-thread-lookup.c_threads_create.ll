; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_threads_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_threads_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32 }

@threads = common dso_local global %struct.thread_data* null, align 8
@go_away = common dso_local global i64 0, align 8
@THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @threads_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @threads_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.thread_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.thread_data*, %struct.thread_data** @threads, align 8
  %6 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %5, i64 0
  store %struct.thread_data* %6, %struct.thread_data** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* @go_away, align 8
  %7 = load %struct.thread_data*, %struct.thread_data** %2, align 8
  %8 = call i64 @thread_init(%struct.thread_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %29

11:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @THREADS, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @thread_create(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %10
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i64 @thread_init(%struct.thread_data*) #1

declare dso_local i32 @thread_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
