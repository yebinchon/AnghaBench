; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_sync.c_rcu_sync_enter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_sync.c_rcu_sync_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_sync = type { i32, i32, i32, i32, i32 }

@GP_IDLE = common dso_local global i32 0, align 4
@GP_ENTER = common dso_local global i32 0, align 4
@GP_PASSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_sync_enter(%struct.rcu_sync* %0) #0 {
  %2 = alloca %struct.rcu_sync*, align 8
  %3 = alloca i32, align 4
  store %struct.rcu_sync* %0, %struct.rcu_sync** %2, align 8
  %4 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %5 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %4, i32 0, i32 3
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %8 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GP_IDLE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %15 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GP_ENTER, align 4
  %18 = call i32 @WRITE_ONCE(i32 %16, i32 %17)
  %19 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %20 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %25 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %29 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @GP_IDLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = call i32 (...) @synchronize_rcu()
  %36 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %37 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %36, i32 0, i32 2
  %38 = call i32 @rcu_sync_func(i32* %37)
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %41 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %44 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @READ_ONCE(i32 %45)
  %47 = load i64, i64* @GP_PASSED, align 8
  %48 = icmp sge i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @wait_event(i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @rcu_sync_func(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
