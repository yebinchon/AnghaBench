; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.lockdep_map = type { i32 }
%struct.held_lock = type { i32, i64, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@debug_locks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"downgrading a read lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*, i64)* @__lock_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lock_downgrade(%struct.lockdep_map* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lockdep_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.held_lock*, align 8
  %10 = alloca i32, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %11, %struct.task_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @debug_locks, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %82

30:                                               ; preds = %19
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.held_lock* @find_held_lock(%struct.task_struct* %31, %struct.lockdep_map* %32, i32 %33, i32* %10)
  store %struct.held_lock* %34, %struct.held_lock** %9, align 8
  %35 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %36 = icmp ne %struct.held_lock* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %39 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @print_unlock_imbalance_bug(%struct.task_struct* %38, %struct.lockdep_map* %39, i64 %40)
  store i32 0, i32* %3, align 4
  br label %82

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %47 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %52 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @WARN(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %56 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %59 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @reacquire_held_locks(%struct.task_struct* %60, i32 %61, i32 %62, i32* %8)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %82

66:                                               ; preds = %42
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %82

71:                                               ; preds = %66
  %72 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %82

81:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %80, %70, %65, %37, %29, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local %struct.held_lock* @find_held_lock(%struct.task_struct*, %struct.lockdep_map*, i32, i32*) #1

declare dso_local i32 @print_unlock_imbalance_bug(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @reacquire_held_locks(%struct.task_struct*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
