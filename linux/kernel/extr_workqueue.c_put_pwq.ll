; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_put_pwq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_put_pwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_workqueue = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WQ_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_workqueue*)* @put_pwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pwq(%struct.pool_workqueue* %0) #0 {
  %2 = alloca %struct.pool_workqueue*, align 8
  store %struct.pool_workqueue* %0, %struct.pool_workqueue** %2, align 8
  %3 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %4 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %3, i32 0, i32 3
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %9 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %17 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WQ_UNBOUND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %33

29:                                               ; preds = %15
  %30 = load %struct.pool_workqueue*, %struct.pool_workqueue** %2, align 8
  %31 = getelementptr inbounds %struct.pool_workqueue, %struct.pool_workqueue* %30, i32 0, i32 0
  %32 = call i32 @schedule_work(i32* %31)
  br label %33

33:                                               ; preds = %29, %28, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
