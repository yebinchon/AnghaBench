; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_sync.c_rcu_sync_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_sync.c_rcu_sync_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_sync = type { i32, i32, i32 }

@GP_PASSED = common dso_local global i64 0, align 8
@GP_REPLAY = common dso_local global i32 0, align 4
@GP_EXIT = common dso_local global i32 0, align 4
@GP_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_sync_dtor(%struct.rcu_sync* %0) #0 {
  %2 = alloca %struct.rcu_sync*, align 8
  %3 = alloca i32, align 4
  store %struct.rcu_sync* %0, %struct.rcu_sync** %2, align 8
  %4 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %5 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @READ_ONCE(i32 %6)
  %8 = trunc i64 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %11 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @READ_ONCE(i32 %12)
  %14 = load i64, i64* @GP_PASSED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %19 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %22 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GP_REPLAY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %28 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GP_EXIT, align 4
  %31 = call i32 @WRITE_ONCE(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %34 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %37 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @GP_IDLE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = call i32 (...) @rcu_barrier()
  %44 = load %struct.rcu_sync*, %struct.rcu_sync** %2, align 8
  %45 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GP_IDLE, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON_ONCE(i32 %49)
  br label %51

51:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
