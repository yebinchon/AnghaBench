; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_find_held_lock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_find_held_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.held_lock = type { i64 }
%struct.task_struct = type { %struct.held_lock* }
%struct.lockdep_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.held_lock* (%struct.task_struct*, %struct.lockdep_map*, i32, i32*)* @find_held_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.held_lock* @find_held_lock(%struct.task_struct* %0, %struct.lockdep_map* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.lockdep_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.held_lock*, align 8
  %10 = alloca %struct.held_lock*, align 8
  %11 = alloca %struct.held_lock*, align 8
  %12 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sub i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.held_lock*, %struct.held_lock** %16, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %17, i64 %19
  store %struct.held_lock* %20, %struct.held_lock** %10, align 8
  %21 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  store %struct.held_lock* %21, %struct.held_lock** %9, align 8
  %22 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %23 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %24 = call i64 @match_held_lock(%struct.held_lock* %22, %struct.lockdep_map* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %58

27:                                               ; preds = %4
  store %struct.held_lock* null, %struct.held_lock** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %12, align 4
  %30 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %31 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %30, i32 -1
  store %struct.held_lock* %31, %struct.held_lock** %10, align 8
  store %struct.held_lock* %30, %struct.held_lock** %11, align 8
  br label %32

32:                                               ; preds = %52, %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.held_lock*, %struct.held_lock** %11, align 8
  %37 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %40 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store %struct.held_lock* null, %struct.held_lock** %9, align 8
  br label %57

44:                                               ; preds = %35
  %45 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %46 = load %struct.lockdep_map*, %struct.lockdep_map** %6, align 8
  %47 = call i64 @match_held_lock(%struct.held_lock* %45, %struct.lockdep_map* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  store %struct.held_lock* %50, %struct.held_lock** %9, align 8
  br label %57

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %12, align 4
  %55 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %56 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %55, i32 -1
  store %struct.held_lock* %56, %struct.held_lock** %10, align 8
  store %struct.held_lock* %55, %struct.held_lock** %11, align 8
  br label %32

57:                                               ; preds = %49, %43, %32
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.held_lock*, %struct.held_lock** %9, align 8
  ret %struct.held_lock* %61
}

declare dso_local i64 @match_held_lock(%struct.held_lock*, %struct.lockdep_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
