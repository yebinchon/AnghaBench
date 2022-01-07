; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_thread_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_mmap-thread-lookup.c_thread_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_data = type { i32*, i32 }

@threads = common dso_local global %struct.thread_data* null, align 8
@thread_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thread_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.thread_data*, %struct.thread_data** @threads, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %8, i64 %10
  store %struct.thread_data* %11, %struct.thread_data** %4, align 8
  %12 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %13 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @pipe(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %20 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %19, i32 0, i32 1
  %21 = load i32, i32* @thread_fn, align 4
  %22 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %23 = call i32 @pthread_create(i32* %20, i32* null, i32 %21, %struct.thread_data* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %18
  %27 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %28 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @read(i32 %31, i32* %6, i32 4)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %18
  %38 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %39 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %45 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %37, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @pipe(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.thread_data*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
