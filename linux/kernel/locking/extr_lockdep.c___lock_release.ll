; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c___lock_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c___lock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.lockdep_map = type { i32 }
%struct.held_lock = type { i32, i64, i32, %struct.lockdep_map* }

@current = common dso_local global %struct.task_struct* null, align 8
@debug_locks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"releasing a pinned lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*, i64)* @__lock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lock_release(%struct.lockdep_map* %0, i64 %1) #0 {
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
  store i32 1, i32* %8, align 4
  %12 = load i32, i32* @debug_locks, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ule i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %27 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @print_unlock_imbalance_bug(%struct.task_struct* %26, %struct.lockdep_map* %27, i64 %28)
  store i32 0, i32* %3, align 4
  br label %103

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
  br label %103

42:                                               ; preds = %30
  %43 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %44 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %43, i32 0, i32 3
  %45 = load %struct.lockdep_map*, %struct.lockdep_map** %44, align 8
  %46 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %47 = icmp eq %struct.lockdep_map* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %50 = call i32 @lock_release_holdtime(%struct.held_lock* %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %53 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @WARN(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %57 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %62 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %66 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %103

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  %76 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %79 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub i32 %81, 1
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %103

85:                                               ; preds = %71
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i64 @reacquire_held_locks(%struct.task_struct* %86, i32 %87, i32 %89, i32* %8)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %103

93:                                               ; preds = %85
  %94 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sub i32 %97, %98
  %100 = icmp ne i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %93, %92, %84, %69, %37, %25, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @print_unlock_imbalance_bug(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local %struct.held_lock* @find_held_lock(%struct.task_struct*, %struct.lockdep_map*, i32, i32*) #1

declare dso_local i32 @lock_release_holdtime(%struct.held_lock*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @reacquire_held_locks(%struct.task_struct*, i32, i32, i32*) #1

declare dso_local i32 @DEBUG_LOCKS_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
