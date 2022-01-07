; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_vfs_lock_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_vfs_lock_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.file_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_lock_file(%struct.file* %0, i32 %1, %struct.file_lock* %2, %struct.file_lock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca %struct.file_lock*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file_lock* %2, %struct.file_lock** %8, align 8
  store %struct.file_lock* %3, %struct.file_lock** %9, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %13, align 8
  %15 = icmp ne i32 (%struct.file*, i32, %struct.file_lock*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %20, align 8
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %25 = call i32 %21(%struct.file* %22, i32 %23, %struct.file_lock* %24)
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %29 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %30 = call i32 @posix_lock_file(%struct.file* %27, %struct.file_lock* %28, %struct.file_lock* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
