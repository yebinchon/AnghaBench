; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_vfs_test_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_vfs_test_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.file_lock = type { i32 }

@F_GETLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_test_lock(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %9, align 8
  %11 = icmp ne i32 (%struct.file*, i32, %struct.file_lock*)* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %16, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = load i32, i32* @F_GETLK, align 4
  %20 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %21 = call i32 %17(%struct.file* %18, i32 %19, %struct.file_lock* %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %25 = call i32 @posix_test_lock(%struct.file* %23, %struct.file_lock* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @posix_test_lock(%struct.file*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
