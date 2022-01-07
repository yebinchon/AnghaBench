; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_user_shm_lock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_user_shm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@shmlock_user_lock = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_shm_lock(i64 %0, %struct.user_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.user_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.user_struct* %1, %struct.user_struct** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = add i64 %8, %9
  %11 = sub i64 %10, 1
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %15 = call i64 @rlimit(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @RLIM_INFINITY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = load i64, i64* %5, align 8
  %23 = lshr i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = call i32 @spin_lock(i32* @shmlock_user_lock)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %30 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @CAP_IPC_LOCK, align 4
  %37 = call i32 @capable(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %48

40:                                               ; preds = %35, %27, %20
  %41 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %42 = call i32 @get_uid(%struct.user_struct* %41)
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %45 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, %43
  store i64 %47, i64* %45, align 8
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %39
  %49 = call i32 @spin_unlock(i32* @shmlock_user_lock)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @get_uid(%struct.user_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
