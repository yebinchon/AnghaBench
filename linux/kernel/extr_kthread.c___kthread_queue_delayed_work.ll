; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_queue_delayed_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_queue_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.kthread_worker*, i32 }
%struct.timer_list = type { i64, i64 }

@kthread_delayed_work_timer_fn = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kthread_worker*, %struct.kthread_delayed_work*, i64)* @__kthread_queue_delayed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kthread_queue_delayed_work(%struct.kthread_worker* %0, %struct.kthread_delayed_work* %1, i64 %2) #0 {
  %4 = alloca %struct.kthread_worker*, align 8
  %5 = alloca %struct.kthread_delayed_work*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timer_list*, align 8
  %8 = alloca %struct.kthread_work*, align 8
  store %struct.kthread_worker* %0, %struct.kthread_worker** %4, align 8
  store %struct.kthread_delayed_work* %1, %struct.kthread_delayed_work** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %5, align 8
  %10 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %9, i32 0, i32 1
  store %struct.timer_list* %10, %struct.timer_list** %7, align 8
  %11 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %5, align 8
  %12 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %11, i32 0, i32 0
  store %struct.kthread_work* %12, %struct.kthread_work** %8, align 8
  %13 = load %struct.timer_list*, %struct.timer_list** %7, align 8
  %14 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @kthread_delayed_work_timer_fn, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %24 = load %struct.kthread_work*, %struct.kthread_work** %8, align 8
  %25 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %26 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %25, i32 0, i32 1
  %27 = call i32 @kthread_insert_work(%struct.kthread_worker* %23, %struct.kthread_work* %24, i32* %26)
  br label %47

28:                                               ; preds = %3
  %29 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %30 = load %struct.kthread_work*, %struct.kthread_work** %8, align 8
  %31 = call i32 @kthread_insert_work_sanity_check(%struct.kthread_worker* %29, %struct.kthread_work* %30)
  %32 = load %struct.kthread_work*, %struct.kthread_work** %8, align 8
  %33 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %32, i32 0, i32 1
  %34 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %35 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %34, i32 0, i32 0
  %36 = call i32 @list_add(i32* %33, i32* %35)
  %37 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %38 = load %struct.kthread_work*, %struct.kthread_work** %8, align 8
  %39 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %38, i32 0, i32 0
  store %struct.kthread_worker* %37, %struct.kthread_worker** %39, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = load %struct.timer_list*, %struct.timer_list** %7, align 8
  %44 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.timer_list*, %struct.timer_list** %7, align 8
  %46 = call i32 @add_timer(%struct.timer_list* %45)
  br label %47

47:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kthread_insert_work(%struct.kthread_worker*, %struct.kthread_work*, i32*) #1

declare dso_local i32 @kthread_insert_work_sanity_check(%struct.kthread_worker*, %struct.kthread_work*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
