; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_signalfd.c_signalfd_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_signalfd.c_signalfd_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.signalfd_ctx = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.signalfd_ctx*, i32*, i32)* @signalfd_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signalfd_dequeue(%struct.signalfd_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.signalfd_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.signalfd_ctx* %0, %struct.signalfd_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @wait, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %11 = call i32 @DECLARE_WAITQUEUE(i32 %9, %struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %18 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.signalfd_ctx, %struct.signalfd_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @dequeue_signal(%struct.TYPE_7__* %17, i32* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %30 [
    i32 0, label %23
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %3, %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %87

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @add_wait_queue(i32* %41, i32* @wait)
  br label %43

43:                                               ; preds = %61, %37
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %45 = call i32 @set_current_state(i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %47 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.signalfd_ctx, %struct.signalfd_ctx* %47, i32 0, i32 0
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @dequeue_signal(%struct.TYPE_7__* %46, i32* %48, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %73

54:                                               ; preds = %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %56 = call i64 @signal_pending(%struct.TYPE_7__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @ERESTARTSYS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %73

61:                                               ; preds = %54
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = call i32 (...) @schedule()
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_irq(i32* %71)
  br label %43

73:                                               ; preds = %58, %53
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @remove_wait_queue(i32* %82, i32* @wait)
  %84 = load i32, i32* @TASK_RUNNING, align 4
  %85 = call i32 @__set_current_state(i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %73, %30
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dequeue_signal(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(%struct.TYPE_7__*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
