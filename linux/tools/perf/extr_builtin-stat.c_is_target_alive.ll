; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_is_target_alive.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_is_target_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target = type { i32 }
%struct.perf_thread_map = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target*, %struct.perf_thread_map*)* @is_target_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_target_alive(%struct.target* %0, %struct.perf_thread_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target*, align 8
  %5 = alloca %struct.perf_thread_map*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.target* %0, %struct.target** %4, align 8
  store %struct.perf_thread_map* %1, %struct.perf_thread_map** %5, align 8
  %11 = load %struct.target*, %struct.target** %4, align 8
  %12 = call i32 @target__has_task(%struct.target* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %19 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = call i32 (...) @procfs__mountpoint()
  %29 = load %struct.perf_thread_map*, %struct.perf_thread_map** %5, align 8
  %30 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @scnprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %36)
  %38 = call i32 @stat(i8* %26, %struct.stat* %6)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %42

41:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %52 [
    i32 0, label %45
    i32 1, label %50
  ]

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %16

49:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51

52:                                               ; preds = %42
  unreachable
}

declare dso_local i32 @target__has_task(%struct.target*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @procfs__mountpoint(...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
