; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c___lock_unpin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c___lock_unpin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.held_lock* }
%struct.held_lock = type { i64 }
%struct.lockdep_map = type { i32 }
%struct.pin_cookie = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@debug_locks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unpinning an unpinned lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pin count corrupted\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unpinning an unheld lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockdep_map*, i64)* @__lock_unpin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lock_unpin_lock(%struct.lockdep_map* %0, i64 %1) #0 {
  %3 = alloca %struct.pin_cookie, align 8
  %4 = alloca %struct.lockdep_map*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.held_lock*, align 8
  %8 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %3, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %5, align 8
  %10 = load i32, i32* @debug_locks, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %70

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %65, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 1
  %27 = load %struct.held_lock*, %struct.held_lock** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %27, i64 %29
  store %struct.held_lock* %30, %struct.held_lock** %7, align 8
  %31 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %32 = load %struct.lockdep_map*, %struct.lockdep_map** %4, align 8
  %33 = call i64 @match_held_lock(%struct.held_lock* %31, %struct.lockdep_map* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %24
  %36 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %37 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %70

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %3, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %49 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %53 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp slt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %62 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %45
  br label %70

64:                                               ; preds = %24
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %18

68:                                               ; preds = %18
  %69 = call i64 @WARN(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63, %44, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @match_held_lock(%struct.held_lock*, %struct.lockdep_map*) #1

declare dso_local i64 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
