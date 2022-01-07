; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_delayed_work_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_delayed_work_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_delayed_work = type { %struct.kthread_work }
%struct.kthread_work = type { i32, %struct.kthread_worker* }
%struct.kthread_worker = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@dwork = common dso_local global %struct.kthread_delayed_work* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_delayed_work_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.kthread_delayed_work*, align 8
  %4 = alloca %struct.kthread_work*, align 8
  %5 = alloca %struct.kthread_worker*, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %3, align 8
  %8 = ptrtoint %struct.kthread_delayed_work* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.kthread_delayed_work* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.kthread_delayed_work* %11, %struct.kthread_delayed_work** %3, align 8
  %12 = load %struct.kthread_delayed_work*, %struct.kthread_delayed_work** %3, align 8
  %13 = getelementptr inbounds %struct.kthread_delayed_work, %struct.kthread_delayed_work* %12, i32 0, i32 0
  store %struct.kthread_work* %13, %struct.kthread_work** %4, align 8
  %14 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %15 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %14, i32 0, i32 1
  %16 = load %struct.kthread_worker*, %struct.kthread_worker** %15, align 8
  store %struct.kthread_worker* %16, %struct.kthread_worker** %5, align 8
  %17 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %18 = icmp ne %struct.kthread_worker* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %26 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @raw_spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %30 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %29, i32 0, i32 1
  %31 = load %struct.kthread_worker*, %struct.kthread_worker** %30, align 8
  %32 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %33 = icmp ne %struct.kthread_worker* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %37 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %36, i32 0, i32 0
  %38 = call i32 @list_empty(i32* %37)
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %41 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %40, i32 0, i32 0
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %44 = load %struct.kthread_work*, %struct.kthread_work** %4, align 8
  %45 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %46 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %45, i32 0, i32 1
  %47 = call i32 @kthread_insert_work(%struct.kthread_worker* %43, %struct.kthread_work* %44, i32* %46)
  %48 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  %49 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @raw_spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.kthread_delayed_work* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kthread_insert_work(%struct.kthread_worker*, %struct.kthread_work*, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
