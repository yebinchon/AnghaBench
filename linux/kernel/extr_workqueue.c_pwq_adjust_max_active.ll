; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pwq_adjust_max_active.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_pwq_adjust_max_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i64, i64, %struct.TYPE_2__*, i32, %struct.workqueue_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.workqueue_struct = type { i32, i64, i32 }

@WQ_FREEZABLE = common dso_local global i32 0, align 4
@workqueue_freezing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*)* @pwq_adjust_max_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwq_adjust_max_active(%struct.pool_workqueue* %0) #0 {
  %2 = alloca %struct.pool_workqueue*, align 8
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %2, align 8
  %6 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %7 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %6, i32 0, i32 4
  %8 = load %struct.workqueue_struct*, %struct.workqueue_struct** %7, align 8
  store %struct.workqueue_struct* %8, %struct.workqueue_struct** %3, align 8
  %9 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %10 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WQ_FREEZABLE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %15 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %14, i32 0, i32 2
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %21 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %24 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %79

28:                                               ; preds = %19, %1
  %29 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %30 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @workqueue_freezing, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %42 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %45 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %61, %40
  %47 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %48 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %47, i32 0, i32 3
  %49 = call i32 @list_empty(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %53 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %56 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br label %59

59:                                               ; preds = %51, %46
  %60 = phi i1 [ false, %46 ], [ %58, %51 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %63 = call i32 @pwq_activate_first_delayed(%struct.pool_workqueue* %62)
  br label %46

64:                                               ; preds = %59
  %65 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %66 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @wake_up_worker(%struct.TYPE_2__* %67)
  br label %72

69:                                               ; preds = %37
  %70 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %71 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %74 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %72, %27
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pwq_activate_first_delayed(%struct.pool_workqueue*) #1

declare dso_local i32 @wake_up_worker(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
