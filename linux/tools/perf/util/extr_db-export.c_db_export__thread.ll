; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 (%struct.db_export*, %struct.thread*, i64, %struct.machine*)*, i64 }
%struct.machine = type { i32 }
%struct.thread = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__thread(%struct.db_export* %0, %struct.thread* %1, %struct.machine* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.db_export*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i64, align 8
  store %struct.db_export* %0, %struct.db_export** %6, align 8
  store %struct.thread* %1, %struct.thread** %7, align 8
  store %struct.machine* %2, %struct.machine** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.thread*, %struct.thread** %7, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

16:                                               ; preds = %4
  %17 = load %struct.db_export*, %struct.db_export** %6, align 8
  %18 = getelementptr inbounds %struct.db_export, %struct.db_export* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.thread*, %struct.thread** %7, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.thread*, %struct.thread** %9, align 8
  %24 = icmp ne %struct.thread* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.db_export*, %struct.db_export** %6, align 8
  %31 = getelementptr inbounds %struct.db_export, %struct.db_export* %30, i32 0, i32 0
  %32 = load i32 (%struct.db_export*, %struct.thread*, i64, %struct.machine*)*, i32 (%struct.db_export*, %struct.thread*, i64, %struct.machine*)** %31, align 8
  %33 = icmp ne i32 (%struct.db_export*, %struct.thread*, i64, %struct.machine*)* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.db_export*, %struct.db_export** %6, align 8
  %36 = getelementptr inbounds %struct.db_export, %struct.db_export* %35, i32 0, i32 0
  %37 = load i32 (%struct.db_export*, %struct.thread*, i64, %struct.machine*)*, i32 (%struct.db_export*, %struct.thread*, i64, %struct.machine*)** %36, align 8
  %38 = load %struct.db_export*, %struct.db_export** %6, align 8
  %39 = load %struct.thread*, %struct.thread** %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.machine*, %struct.machine** %8, align 8
  %42 = call i32 %37(%struct.db_export* %38, %struct.thread* %39, i64 %40, %struct.machine* %41)
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %34, %15
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
