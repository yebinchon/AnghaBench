; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_sync.c_rcu_sync_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_sync.c_rcu_sync_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_sync = type { i64, i64, i32 }

@GP_IDLE = common dso_local global i64 0, align 8
@GP_PASSED = common dso_local global i64 0, align 8
@GP_EXIT = common dso_local global i64 0, align 8
@GP_REPLAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_sync_exit(%struct.rcu_sync* %0) #0 {
  %2 = alloca %struct.rcu_sync*, align 8
  store %struct.rcu_sync* %0, %struct.rcu_sync** %2, align 8
  %3 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %4 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @READ_ONCE(i64 %5)
  %7 = load i64, i64* @GP_IDLE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %12 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @READ_ONCE(i64 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %19 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %22 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %1
  %27 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %28 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GP_PASSED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %34 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GP_EXIT, align 8
  %37 = call i32 @WRITE_ONCE(i64 %35, i64 %36)
  %38 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %39 = call i32 @rcu_sync_call(%struct.rcu_sync* %38)
  br label %53

40:                                               ; preds = %26
  %41 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %42 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GP_EXIT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %48 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GP_REPLAY, align 8
  %51 = call i32 @WRITE_ONCE(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %56 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock_irq(i32* %56)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WRITE_ONCE(i64, i64) #1

declare dso_local i32 @rcu_sync_call(%struct.rcu_sync*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
