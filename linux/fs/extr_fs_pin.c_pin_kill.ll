; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_pin.c_pin_kill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_pin.c_pin_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_pin = type { i32, %struct.TYPE_6__, i32 (%struct.fs_pin*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pin_kill(%struct.fs_pin* %0) #0 {
  %2 = alloca %struct.fs_pin*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store %struct.fs_pin* %0, %struct.fs_pin** %2, align 8
  %4 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %5 = icmp ne %struct.fs_pin* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (...) @rcu_read_unlock()
  br label %82

8:                                                ; preds = %1
  %9 = call i32 @init_wait(%struct.TYPE_5__* %3)
  %10 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %11 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %15 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %8
  %23 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %24 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %26 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %31 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %30, i32 0, i32 2
  %32 = load i32 (%struct.fs_pin*)*, i32 (%struct.fs_pin*)** %31, align 8
  %33 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %34 = call i32 %32(%struct.fs_pin* %33)
  br label %82

35:                                               ; preds = %8
  %36 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %37 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %42 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = call i32 (...) @rcu_read_unlock()
  br label %82

46:                                               ; preds = %35
  %47 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %48 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %47, i32 0, i32 1
  %49 = call i32 @__add_wait_queue(%struct.TYPE_6__* %48, %struct.TYPE_5__* %3)
  br label %50

50:                                               ; preds = %46, %79
  %51 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %52 = call i32 @set_current_state(i32 %51)
  %53 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %54 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = call i32 (...) @schedule()
  %59 = call i32 (...) @rcu_read_lock()
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %61 = call i32 @list_empty(i32* %60)
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %80

65:                                               ; preds = %50
  %66 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %67 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %71 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.fs_pin*, %struct.fs_pin** %2, align 8
  %76 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  br label %80

79:                                               ; preds = %65
  br label %50

80:                                               ; preds = %74, %64
  %81 = call i32 (...) @rcu_read_unlock()
  br label %82

82:                                               ; preds = %80, %40, %22, %6
  ret void
}

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @init_wait(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__add_wait_queue(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
