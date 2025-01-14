; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_locks_deadlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_locks_deadlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@blocked_lock_lock = common dso_local global i32 0, align 4
@MAX_DEADLK_ITERATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @posix_locks_deadlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_locks_deadlock(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @lockdep_assert_held(i32* @blocked_lock_lock)
  %8 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %9 = call i64 @IS_OFDLCK(%struct.file_lock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %29, %12
  %14 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %15 = call %struct.file_lock* @what_owner_is_waiting_for(%struct.file_lock* %14)
  store %struct.file_lock* %15, %struct.file_lock** %5, align 8
  %16 = icmp ne %struct.file_lock* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @MAX_DEADLK_ITERATIONS, align 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %31

23:                                               ; preds = %17
  %24 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %25 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %26 = call i64 @posix_same_owner(%struct.file_lock* %24, %struct.file_lock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %31

29:                                               ; preds = %23
  br label %13

30:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %22, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @IS_OFDLCK(%struct.file_lock*) #1

declare dso_local %struct.file_lock* @what_owner_is_waiting_for(%struct.file_lock*) #1

declare dso_local i64 @posix_same_owner(%struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
