; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_pin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c___lock_pin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pin_cookie = type { i32 }
%struct.task_struct = type { i32, %struct.held_lock* }
%struct.held_lock = type { i32 }
%struct.lockdep_map = type { i32 }

@NIL_COOKIE = common dso_local global %struct.pin_cookie zeroinitializer, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@debug_locks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pinning an unheld lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockdep_map*)* @__lock_pin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lock_pin_lock(%struct.lockdep_map* %0) #0 {
  %2 = alloca %struct.pin_cookie, align 4
  %3 = alloca %struct.lockdep_map*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.held_lock*, align 8
  store %struct.lockdep_map* %0, %struct.lockdep_map** %3, align 8
  %7 = bitcast %struct.pin_cookie* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.pin_cookie* @NIL_COOKIE to i8*), i64 4, i1 false)
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %8, %struct.task_struct** %4, align 8
  %9 = load i32, i32* @debug_locks, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %51

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load %struct.held_lock*, %struct.held_lock** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %26, i64 %28
  store %struct.held_lock* %29, %struct.held_lock** %6, align 8
  %30 = load %struct.held_lock*, %struct.held_lock** %6, align 8
  %31 = load %struct.lockdep_map*, %struct.lockdep_map** %3, align 8
  %32 = call i64 @match_held_lock(%struct.held_lock* %30, %struct.lockdep_map* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = call i32 (...) @prandom_u32()
  %36 = ashr i32 %35, 16
  %37 = add nsw i32 1, %36
  %38 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %2, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %2, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.held_lock*, %struct.held_lock** %6, align 8
  %42 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %17

49:                                               ; preds = %17
  %50 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %34, %15
  %52 = getelementptr inbounds %struct.pin_cookie, %struct.pin_cookie* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @match_held_lock(%struct.held_lock*, %struct.lockdep_map*) #2

declare dso_local i32 @prandom_u32(...) #2

declare dso_local i32 @WARN(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
