; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_qrwlock.c_queued_write_lock_slowpath.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_qrwlock.c_queued_write_lock_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrwlock = type { i32, i32 }

@_QW_LOCKED = common dso_local global i32 0, align 4
@_QW_WAITING = common dso_local global i64 0, align 8
@VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queued_write_lock_slowpath(%struct.qrwlock* %0) #0 {
  %2 = alloca %struct.qrwlock*, align 8
  store %struct.qrwlock* %0, %struct.qrwlock** %2, align 8
  %3 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %4 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %3, i32 0, i32 0
  %5 = call i32 @arch_spin_lock(i32* %4)
  %6 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %7 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %12 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %11, i32 0, i32 1
  %13 = load i32, i32* @_QW_LOCKED, align 4
  %14 = call i64 @atomic_cmpxchg_acquire(i32* %12, i32 0, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %39

17:                                               ; preds = %10, %1
  %18 = load i64, i64* @_QW_WAITING, align 8
  %19 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %20 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %19, i32 0, i32 1
  %21 = call i32 @atomic_add(i64 %18, i32* %20)
  br label %22

22:                                               ; preds = %30, %17
  %23 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %24 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %23, i32 0, i32 1
  %25 = load i64, i64* @VAL, align 8
  %26 = load i64, i64* @_QW_WAITING, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @atomic_cond_read_acquire(i32* %24, i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %32 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %31, i32 0, i32 1
  %33 = load i64, i64* @_QW_WAITING, align 8
  %34 = load i32, i32* @_QW_LOCKED, align 4
  %35 = call i64 @atomic_cmpxchg_relaxed(i32* %32, i64 %33, i32 %34)
  %36 = load i64, i64* @_QW_WAITING, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %22, label %38

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %41 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %40, i32 0, i32 0
  %42 = call i32 @arch_spin_unlock(i32* %41)
  ret void
}

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @atomic_cmpxchg_acquire(i32*, i32, i32) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @atomic_cond_read_acquire(i32*, i32) #1

declare dso_local i64 @atomic_cmpxchg_relaxed(i32*, i64, i32) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
