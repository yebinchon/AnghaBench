; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_lock_to_flock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_lock_to_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i64, i64, i32, i64, i32 }
%struct.file_lock = type { i64, i64, i32 }

@current = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@OFFT_OFFSET_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flock*, %struct.file_lock*)* @posix_lock_to_flock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_lock_to_flock(%struct.flock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.flock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.flock* %0, %struct.flock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %5 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @task_active_pid_ns(i32 %6)
  %8 = call i32 @locks_translate_pid(%struct.file_lock* %5, i32 %7)
  %9 = load %struct.flock*, %struct.flock** %3, align 8
  %10 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %12 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.flock*, %struct.flock** %3, align 8
  %15 = getelementptr inbounds %struct.flock, %struct.flock* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OFFSET_MAX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = add nsw i64 %29, 1
  br label %31

31:                                               ; preds = %22, %21
  %32 = phi i64 [ 0, %21 ], [ %30, %22 ]
  %33 = load %struct.flock*, %struct.flock** %3, align 8
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.flock*, %struct.flock** %3, align 8
  %36 = getelementptr inbounds %struct.flock, %struct.flock* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.flock*, %struct.flock** %3, align 8
  %41 = getelementptr inbounds %struct.flock, %struct.flock* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  ret i32 0
}

declare dso_local i32 @locks_translate_pid(%struct.file_lock*, i32) #1

declare dso_local i32 @task_active_pid_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
