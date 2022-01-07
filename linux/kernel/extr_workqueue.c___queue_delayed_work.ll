; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___queue_delayed_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___queue_delayed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32 }
%struct.delayed_work = type { i32, %struct.workqueue_struct*, %struct.work_struct, %struct.timer_list }
%struct.work_struct = type { i32 }
%struct.timer_list = type { i64, i64 }

@delayed_work_timer_fn = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@WORK_CPU_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.workqueue_struct*, %struct.delayed_work*, i64)* @__queue_delayed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__queue_delayed_work(i32 %0, %struct.workqueue_struct* %1, %struct.delayed_work* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.workqueue_struct*, align 8
  %7 = alloca %struct.delayed_work*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timer_list*, align 8
  %10 = alloca %struct.work_struct*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.workqueue_struct* %1, %struct.workqueue_struct** %6, align 8
  store %struct.delayed_work* %2, %struct.delayed_work** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %12 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %11, i32 0, i32 3
  store %struct.timer_list* %12, %struct.timer_list** %9, align 8
  %13 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %14 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %13, i32 0, i32 2
  store %struct.work_struct* %14, %struct.work_struct** %10, align 8
  %15 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %16 = icmp ne %struct.workqueue_struct* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.timer_list*, %struct.timer_list** %9, align 8
  %21 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @delayed_work_timer_fn, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.timer_list*, %struct.timer_list** %9, align 8
  %28 = call i32 @timer_pending(%struct.timer_list* %27)
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.work_struct*, %struct.work_struct** %10, align 8
  %31 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %30, i32 0, i32 0
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %42 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %43 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %42, i32 0, i32 2
  %44 = call i32 @__queue_work(i32 %40, %struct.workqueue_struct* %41, %struct.work_struct* %43)
  br label %70

45:                                               ; preds = %4
  %46 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %47 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %48 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %47, i32 0, i32 1
  store %struct.workqueue_struct* %46, %struct.workqueue_struct** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %51 = getelementptr inbounds %struct.delayed_work, %struct.delayed_work* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %52, %53
  %55 = load %struct.timer_list*, %struct.timer_list** %9, align 8
  %56 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @WORK_CPU_UNBOUND, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load %struct.timer_list*, %struct.timer_list** %9, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @add_timer_on(%struct.timer_list* %64, i32 %65)
  br label %70

67:                                               ; preds = %45
  %68 = load %struct.timer_list*, %struct.timer_list** %9, align 8
  %69 = call i32 @add_timer(%struct.timer_list* %68)
  br label %70

70:                                               ; preds = %39, %67, %63
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__queue_work(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @add_timer_on(%struct.timer_list*, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
