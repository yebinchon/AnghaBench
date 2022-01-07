; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_mutex.c___mutex_trylock_or_owner.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_mutex.c___mutex_trylock_or_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mutex = type { i32 }

@current = common dso_local global i64 0, align 8
@MUTEX_FLAGS = common dso_local global i64 0, align 8
@MUTEX_FLAG_PICKUP = common dso_local global i64 0, align 8
@MUTEX_FLAG_HANDOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.mutex*)* @__mutex_trylock_or_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @__mutex_trylock_or_owner(%struct.mutex* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mutex*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mutex* %0, %struct.mutex** %3, align 8
  %9 = load i64, i64* @current, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.mutex*, %struct.mutex** %3, align 8
  %11 = getelementptr inbounds %struct.mutex, %struct.mutex* %10, i32 0, i32 0
  %12 = call i64 @atomic_long_read(i32* %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %62, %1
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @__owner_flags(i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @MUTEX_FLAGS, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %13
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %64

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @MUTEX_FLAG_PICKUP, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %64

40:                                               ; preds = %30
  %41 = load i64, i64* @MUTEX_FLAG_PICKUP, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %46

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i64, i64* @MUTEX_FLAG_HANDOFF, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load %struct.mutex*, %struct.mutex** %3, align 8
  %52 = getelementptr inbounds %struct.mutex, %struct.mutex* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %54, %55
  %57 = call i64 @atomic_long_cmpxchg_acquire(i32* %52, i64 %53, i64 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store %struct.task_struct* null, %struct.task_struct** %2, align 8
  br label %67

62:                                               ; preds = %46
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %4, align 8
  br label %13

64:                                               ; preds = %39, %29
  %65 = load i64, i64* %4, align 8
  %66 = call %struct.task_struct* @__owner_task(i64 %65)
  store %struct.task_struct* %66, %struct.task_struct** %2, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %68
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @__owner_flags(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @atomic_long_cmpxchg_acquire(i32*, i64, i64) #1

declare dso_local %struct.task_struct* @__owner_task(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
