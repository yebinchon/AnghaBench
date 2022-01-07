; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_match_held_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_lockdep.c_match_held_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class = type { i32 }
%struct.held_lock = type { i32, i32, i64, %struct.lockdep_map* }
%struct.lockdep_map = type { %struct.lock_class** }

@lock_classes = common dso_local global %struct.lock_class* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.held_lock*, %struct.lockdep_map*)* @match_held_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_held_lock(%struct.held_lock* %0, %struct.lockdep_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.held_lock*, align 8
  %5 = alloca %struct.lockdep_map*, align 8
  %6 = alloca %struct.lock_class*, align 8
  store %struct.held_lock* %0, %struct.held_lock** %4, align 8
  store %struct.lockdep_map* %1, %struct.lockdep_map** %5, align 8
  %7 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %8 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %7, i32 0, i32 3
  %9 = load %struct.lockdep_map*, %struct.lockdep_map** %8, align 8
  %10 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %11 = icmp eq %struct.lockdep_map* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %15 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %20 = getelementptr inbounds %struct.lockdep_map, %struct.lockdep_map* %19, i32 0, i32 0
  %21 = load %struct.lock_class**, %struct.lock_class*** %20, align 8
  %22 = getelementptr inbounds %struct.lock_class*, %struct.lock_class** %21, i64 0
  %23 = load %struct.lock_class*, %struct.lock_class** %22, align 8
  store %struct.lock_class* %23, %struct.lock_class** %6, align 8
  %24 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %25 = icmp ne %struct.lock_class* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.lockdep_map*, %struct.lockdep_map** %5, align 8
  %28 = call %struct.lock_class* @look_up_lock_class(%struct.lockdep_map* %27, i32 0)
  store %struct.lock_class* %28, %struct.lock_class** %6, align 8
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %31 = icmp ne %struct.lock_class* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %58

33:                                               ; preds = %29
  %34 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %35 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %58

43:                                               ; preds = %33
  %44 = load %struct.held_lock*, %struct.held_lock** %4, align 8
  %45 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load %struct.lock_class*, %struct.lock_class** %6, align 8
  %49 = load %struct.lock_class*, %struct.lock_class** @lock_classes, align 8
  %50 = ptrtoint %struct.lock_class* %48 to i64
  %51 = ptrtoint %struct.lock_class* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp eq i64 %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %58

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %13
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55, %42, %32, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.lock_class* @look_up_lock_class(%struct.lockdep_map*, i32) #1

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
