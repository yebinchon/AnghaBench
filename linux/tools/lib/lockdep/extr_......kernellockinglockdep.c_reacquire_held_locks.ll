; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_reacquire_held_locks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_reacquire_held_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.held_lock* }
%struct.held_lock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i32, i32*)* @reacquire_held_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reacquire_held_locks(%struct.task_struct* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.held_lock*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i32 (...) @irqs_disabled()
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @DEBUG_LOCKS_WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

20:                                               ; preds = %4
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load %struct.held_lock*, %struct.held_lock** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %23, i64 %25
  store %struct.held_lock* %26, %struct.held_lock** %10, align 8
  br label %27

27:                                               ; preds = %77, %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %33 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %36 = call %struct.TYPE_2__* @hlock_class(%struct.held_lock* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %40 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %43 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %46 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %49 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %52 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %55 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %58 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %61 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__lock_acquire(i32 %34, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  switch i32 %63, label %74 [
    i32 0, label %64
    i32 1, label %65
    i32 2, label %66
  ]

64:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %83

65:                                               ; preds = %31
  br label %76

66:                                               ; preds = %31
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %76

74:                                               ; preds = %31
  %75 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %5, align 4
  br label %83

76:                                               ; preds = %66, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load %struct.held_lock*, %struct.held_lock** %10, align 8
  %81 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %80, i32 1
  store %struct.held_lock* %81, %struct.held_lock** %10, align 8
  br label %27

82:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %74, %64, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @DEBUG_LOCKS_WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @__lock_acquire(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hlock_class(%struct.held_lock*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
