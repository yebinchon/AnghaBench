; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_mutex-debug.c_debug_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_mutex-debug.c_debug_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.TYPE_2__, %struct.mutex* }
%struct.TYPE_2__ = type { i32, i32 }

@debug_locks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_mutex_unlock(%struct.mutex* %0) #0 {
  %2 = alloca %struct.mutex*, align 8
  store %struct.mutex* %0, %struct.mutex** %2, align 8
  %3 = load i32, i32* @debug_locks, align 4
  %4 = call i64 @likely(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = load %struct.mutex*, %struct.mutex** %2, align 8
  %8 = getelementptr inbounds %struct.mutex, %struct.mutex* %7, i32 0, i32 1
  %9 = load %struct.mutex*, %struct.mutex** %8, align 8
  %10 = load %struct.mutex*, %struct.mutex** %2, align 8
  %11 = icmp ne %struct.mutex* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %12)
  %14 = load %struct.mutex*, %struct.mutex** %2, align 8
  %15 = getelementptr inbounds %struct.mutex, %struct.mutex* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %6
  %20 = load %struct.mutex*, %struct.mutex** %2, align 8
  %21 = getelementptr inbounds %struct.mutex, %struct.mutex* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %19, %6
  %27 = phi i1 [ false, %6 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @DEBUG_LOCKS_WARN_ON(i32 %28)
  br label %30

30:                                               ; preds = %26, %1
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DEBUG_LOCKS_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
