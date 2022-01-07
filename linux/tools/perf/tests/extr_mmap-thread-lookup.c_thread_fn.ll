; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"failed to notify\0A\00", align 1
@go_away = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.thread_data*
  store %struct.thread_data* %8, %struct.thread_data** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %10 = call i64 @thread_init(%struct.thread_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %15 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @write(i32 %18, i32* %6, i32 4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %38

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* @go_away, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @usleep(i32 100)
  br label %26

32:                                               ; preds = %26
  %33 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %34 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @page_size, align 4
  %37 = call i32 @munmap(i32 %35, i32 %36)
  store i8* null, i8** %2, align 8
  br label %38

38:                                               ; preds = %32, %23, %12
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i64 @thread_init(%struct.thread_data*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @munmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
