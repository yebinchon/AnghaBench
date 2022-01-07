; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_set_class.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_set_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.lockdep_map = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.held_lock = type { i32, %struct.lock_class* }
%struct.lock_class = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@debug_locks = common dso_local global i32 0, align 4
@lock_classes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*, i8*, %struct.lock_class_key*, i32, i64)* @__lock_set_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lock_set_class(%struct.lockdep_map* %0, i8* %1, %struct.lock_class_key* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lockdep_map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lock_class_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.held_lock*, align 8
  %16 = alloca %struct.lock_class*, align 8
  %17 = alloca i32, align 4
  store %struct.lockdep_map* %0, %struct.lockdep_map** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %18, %struct.task_struct** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* @debug_locks, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %91

26:                                               ; preds = %5
  %27 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %91

37:                                               ; preds = %26
  %38 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %39 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.held_lock* @find_held_lock(%struct.task_struct* %38, %struct.lockdep_map* %39, i32 %40, i32* %17)
  store %struct.held_lock* %41, %struct.held_lock** %15, align 8
  %42 = load %struct.held_lock*, %struct.held_lock** %15, align 8
  %43 = icmp ne %struct.held_lock* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %46 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @print_unlock_imbalance_bug(%struct.task_struct* %45, %struct.lockdep_map* %46, i64 %47)
  store i32 0, i32* %6, align 4
  br label %91

49:                                               ; preds = %37
  %50 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.lock_class_key*, %struct.lock_class_key** %9, align 8
  %53 = call i32 @lockdep_init_map(%struct.lockdep_map* %50, i8* %51, %struct.lock_class_key* %52, i32 0)
  %54 = load %struct.lockdep_map*, %struct.lockdep_map** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.lock_class* @register_lock_class(%struct.lockdep_map* %54, i32 %55, i32 0)
  store %struct.lock_class* %56, %struct.lock_class** %16, align 8
  %57 = load %struct.lock_class*, %struct.lock_class** %16, align 8
  %58 = load i32, i32* @lock_classes, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %57, i64 %60
  %62 = load %struct.held_lock*, %struct.held_lock** %15, align 8
  %63 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %62, i32 0, i32 1
  store %struct.lock_class* %61, %struct.lock_class** %63, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.held_lock*, %struct.held_lock** %15, align 8
  %68 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @reacquire_held_locks(%struct.task_struct* %72, i32 %73, i32 %74, i32* %14)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %91

78:                                               ; preds = %49
  %79 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %80 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub i32 %82, %83
  %85 = icmp ne i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %91

90:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %89, %77, %44, %36, %25
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local %struct.held_lock* @find_held_lock(%struct.task_struct*, %struct.lockdep_map*, i32, i32*) #1

declare dso_local i32 @print_unlock_imbalance_bug(%struct.task_struct*, %struct.lockdep_map*, i64) #1

declare dso_local i32 @lockdep_init_map(%struct.lockdep_map*, i8*, %struct.lock_class_key*, i32) #1

declare dso_local %struct.lock_class* @register_lock_class(%struct.lockdep_map*, i32, i32) #1

declare dso_local i64 @reacquire_held_locks(%struct.task_struct*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
