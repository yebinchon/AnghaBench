; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_mcs_spinlock.h_mcs_spin_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_mcs_spinlock.h_mcs_spin_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_spinlock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcs_spinlock**, %struct.mcs_spinlock*)* @mcs_spin_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs_spin_unlock(%struct.mcs_spinlock** %0, %struct.mcs_spinlock* %1) #0 {
  %3 = alloca %struct.mcs_spinlock**, align 8
  %4 = alloca %struct.mcs_spinlock*, align 8
  %5 = alloca %struct.mcs_spinlock*, align 8
  store %struct.mcs_spinlock** %0, %struct.mcs_spinlock*** %3, align 8
  store %struct.mcs_spinlock* %1, %struct.mcs_spinlock** %4, align 8
  %6 = load %struct.mcs_spinlock*, %struct.mcs_spinlock** %4, align 8
  %7 = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mcs_spinlock* @READ_ONCE(i32 %8)
  store %struct.mcs_spinlock* %9, %struct.mcs_spinlock** %5, align 8
  %10 = load %struct.mcs_spinlock*, %struct.mcs_spinlock** %5, align 8
  %11 = icmp ne %struct.mcs_spinlock* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.mcs_spinlock**, %struct.mcs_spinlock*** %3, align 8
  %18 = load %struct.mcs_spinlock*, %struct.mcs_spinlock** %4, align 8
  %19 = call %struct.mcs_spinlock* @cmpxchg_release(%struct.mcs_spinlock** %17, %struct.mcs_spinlock* %18, i32* null)
  %20 = load %struct.mcs_spinlock*, %struct.mcs_spinlock** %4, align 8
  %21 = icmp eq %struct.mcs_spinlock* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %41

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %34, %26
  %28 = load %struct.mcs_spinlock*, %struct.mcs_spinlock** %4, align 8
  %29 = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.mcs_spinlock* @READ_ONCE(i32 %30)
  store %struct.mcs_spinlock* %31, %struct.mcs_spinlock** %5, align 8
  %32 = icmp ne %struct.mcs_spinlock* %31, null
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 (...) @cpu_relax()
  br label %27

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.mcs_spinlock*, %struct.mcs_spinlock** %5, align 8
  %39 = getelementptr inbounds %struct.mcs_spinlock, %struct.mcs_spinlock* %38, i32 0, i32 0
  %40 = call i32 @arch_mcs_spin_unlock_contended(i32* %39)
  br label %41

41:                                               ; preds = %37, %25
  ret void
}

declare dso_local %struct.mcs_spinlock* @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.mcs_spinlock* @cmpxchg_release(%struct.mcs_spinlock**, %struct.mcs_spinlock*, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @arch_mcs_spin_unlock_contended(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
