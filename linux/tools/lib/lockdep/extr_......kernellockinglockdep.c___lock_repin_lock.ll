; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_repin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_repin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.held_lock* }
%struct.held_lock = type { i32 }
%struct.lockdep_map = type { i32 }
%struct.pin_cookie = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@debug_locks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pinning an unheld lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockdep_map*, i64)* @__lock_repin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lock_repin_lock(%struct.lockdep_map* %0, i64 %1) #0 {
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
  br label %50

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %48

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
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.held_lock*, %struct.held_lock** %7, align 8
  %39 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %50

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %18

48:                                               ; preds = %18
  %49 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %35, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @match_held_lock(%struct.held_lock*, %struct.lockdep_map*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
