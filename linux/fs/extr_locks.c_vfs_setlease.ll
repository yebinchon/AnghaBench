; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_vfs_setlease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_vfs_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.file_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_setlease(%struct.file* %0, i64 %1, %struct.file_lock** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file_lock**, align 8
  %9 = alloca i8**, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.file_lock** %2, %struct.file_lock*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %11 = icmp ne %struct.file_lock** %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %15 = load %struct.file_lock*, %struct.file_lock** %14, align 8
  %16 = call i32 @setlease_notifier(i64 %13, %struct.file_lock* %15)
  br label %17

17:                                               ; preds = %12, %4
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.file*, i64, %struct.file_lock**, i8**)**
  %23 = load i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)** %22, align 8
  %24 = icmp ne i32 (%struct.file*, i64, %struct.file_lock**, i8**)* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.file*, i64, %struct.file_lock**, i8**)**
  %31 = load i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)** %30, align 8
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = call i32 %31(%struct.file* %32, i64 %33, %struct.file_lock** %34, i8** %35)
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %17
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = call i32 @generic_setlease(%struct.file* %38, i64 %39, %struct.file_lock** %40, i8** %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %25
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @setlease_notifier(i64, %struct.file_lock*) #1

declare dso_local i32 @generic_setlease(%struct.file*, i64, %struct.file_lock**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
