; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_try_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_try_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32, i32, i32 }

@RWSEM_FLAG_HANDOFF = common dso_local global i64 0, align 8
@WRITER_NOT_FIRST = common dso_local global i32 0, align 4
@RWSEM_LOCK_MASK = common dso_local global i64 0, align 8
@WRITER_HANDOFF = common dso_local global i32 0, align 4
@RWSEM_WRITER_LOCKED = common dso_local global i64 0, align 8
@RWSEM_FLAG_WAITERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rw_semaphore*, i32)* @rwsem_try_write_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwsem_try_write_lock(%struct.rw_semaphore* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rw_semaphore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rw_semaphore*, %struct.rw_semaphore** %4, align 8
  %10 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.rw_semaphore*, %struct.rw_semaphore** %4, align 8
  %13 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %12, i32 0, i32 1
  %14 = call i64 @atomic_long_read(i32* %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %67, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @RWSEM_FLAG_HANDOFF, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WRITER_NOT_FIRST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %83

30:                                               ; preds = %25, %15
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @RWSEM_LOCK_MASK, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @WRITER_HANDOFF, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %83

44:                                               ; preds = %39
  %45 = load i64, i64* @RWSEM_FLAG_HANDOFF, align 8
  %46 = load i64, i64* %7, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %66

48:                                               ; preds = %30
  %49 = load i64, i64* @RWSEM_WRITER_LOCKED, align 8
  %50 = load i64, i64* %7, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* @RWSEM_FLAG_HANDOFF, align 8
  %53 = xor i64 %52, -1
  %54 = load i64, i64* %7, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load %struct.rw_semaphore*, %struct.rw_semaphore** %4, align 8
  %57 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %56, i32 0, i32 0
  %58 = call i64 @list_is_singular(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load i64, i64* @RWSEM_FLAG_WAITERS, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %60, %48
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.rw_semaphore*, %struct.rw_semaphore** %4, align 8
  %69 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %68, i32 0, i32 1
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @atomic_long_try_cmpxchg_acquire(i32* %69, i64* %6, i64 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %15, label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @RWSEM_FLAG_HANDOFF, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load %struct.rw_semaphore*, %struct.rw_semaphore** %4, align 8
  %82 = call i32 @rwsem_set_owner(%struct.rw_semaphore* %81)
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %79, %43, %29
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @atomic_long_try_cmpxchg_acquire(i32*, i64*, i64) #1

declare dso_local i32 @rwsem_set_owner(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
