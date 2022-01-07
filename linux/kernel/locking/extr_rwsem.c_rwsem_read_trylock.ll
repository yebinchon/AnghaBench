; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_read_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_read_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32 }

@RWSEM_READER_BIAS = common dso_local global i32 0, align 4
@RWSEM_READ_FAILED_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rw_semaphore*)* @rwsem_read_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwsem_read_trylock(%struct.rw_semaphore* %0) #0 {
  %2 = alloca %struct.rw_semaphore*, align 8
  %3 = alloca i64, align 8
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %2, align 8
  %4 = load i32, i32* @RWSEM_READER_BIAS, align 4
  %5 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %6 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %5, i32 0, i32 0
  %7 = call i64 @atomic_long_add_return_acquire(i32 %4, i32* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %15 = call i32 @rwsem_set_nonspinnable(%struct.rw_semaphore* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @RWSEM_READ_FAILED_MASK, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @atomic_long_add_return_acquire(i32, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rwsem_set_nonspinnable(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
