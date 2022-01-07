; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_set_nonspinnable.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_set_nonspinnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32 }

@RWSEM_READER_OWNED = common dso_local global i64 0, align 8
@RWSEM_NONSPINNABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rw_semaphore*)* @rwsem_set_nonspinnable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwsem_set_nonspinnable(%struct.rw_semaphore* %0) #0 {
  %2 = alloca %struct.rw_semaphore*, align 8
  %3 = alloca i64, align 8
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %2, align 8
  %4 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %5 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %4, i32 0, i32 0
  %6 = call i64 @atomic_long_read(i32* %5)
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @RWSEM_READER_OWNED, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %29

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @RWSEM_NONSPINNABLE, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %29

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %22 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @RWSEM_NONSPINNABLE, align 8
  %25 = or i64 %23, %24
  %26 = call i32 @atomic_long_try_cmpxchg(i32* %22, i64* %3, i64 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %7, label %29

29:                                               ; preds = %20, %18, %12
  ret void
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @atomic_long_try_cmpxchg(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
