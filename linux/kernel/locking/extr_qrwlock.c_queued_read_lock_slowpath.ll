; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_qrwlock.c_queued_read_lock_slowpath.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_qrwlock.c_queued_read_lock_slowpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrwlock = type { i32, i32 }

@VAL = common dso_local global i32 0, align 4
@_QW_LOCKED = common dso_local global i32 0, align 4
@_QR_BIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queued_read_lock_slowpath(%struct.qrwlock* %0) #0 {
  %2 = alloca %struct.qrwlock*, align 8
  store %struct.qrwlock* %0, %struct.qrwlock** %2, align 8
  %3 = call i32 (...) @in_interrupt()
  %4 = call i64 @unlikely(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %8 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %7, i32 0, i32 1
  %9 = load i32, i32* @VAL, align 4
  %10 = load i32, i32* @_QW_LOCKED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @atomic_cond_read_acquire(i32* %8, i32 %14)
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @_QR_BIAS, align 4
  %18 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %19 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %18, i32 0, i32 1
  %20 = call i32 @atomic_sub(i32 %17, i32* %19)
  %21 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %22 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %21, i32 0, i32 0
  %23 = call i32 @arch_spin_lock(i32* %22)
  %24 = load i32, i32* @_QR_BIAS, align 4
  %25 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %26 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %25, i32 0, i32 1
  %27 = call i32 @atomic_add(i32 %24, i32* %26)
  %28 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %29 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %28, i32 0, i32 1
  %30 = load i32, i32* @VAL, align 4
  %31 = load i32, i32* @_QW_LOCKED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @atomic_cond_read_acquire(i32* %29, i32 %35)
  %37 = load %struct.qrwlock*, %struct.qrwlock** %2, align 8
  %38 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %37, i32 0, i32 0
  %39 = call i32 @arch_spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %16, %6
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @atomic_cond_read_acquire(i32*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
