; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_enqueue_dl_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_enqueue_dl_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32 }

@ENQUEUE_WAKEUP = common dso_local global i32 0, align 4
@ENQUEUE_REPLENISH = common dso_local global i32 0, align 4
@ENQUEUE_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, %struct.sched_dl_entity*, i32)* @enqueue_dl_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_dl_entity(%struct.sched_dl_entity* %0, %struct.sched_dl_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.sched_dl_entity*, align 8
  %5 = alloca %struct.sched_dl_entity*, align 8
  %6 = alloca i32, align 4
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %4, align 8
  store %struct.sched_dl_entity* %1, %struct.sched_dl_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %8 = call i32 @on_dl_rq(%struct.sched_dl_entity* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ENQUEUE_WAKEUP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @task_contending(%struct.sched_dl_entity* %15, i32 %16)
  %18 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %19 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %20 = call i32 @update_dl_entity(%struct.sched_dl_entity* %18, %struct.sched_dl_entity* %19)
  br label %50

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ENQUEUE_REPLENISH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %28 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %29 = call i32 @replenish_dl_entity(%struct.sched_dl_entity* %27, %struct.sched_dl_entity* %28)
  br label %49

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ENQUEUE_RESTORE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %37 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %40 = call i32 @dl_rq_of_se(%struct.sched_dl_entity* %39)
  %41 = call i32 @rq_of_dl_rq(i32 %40)
  %42 = call i32 @rq_clock(i32 %41)
  %43 = call i64 @dl_time_before(i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %47 = call i32 @setup_new_dl_entity(%struct.sched_dl_entity* %46)
  br label %48

48:                                               ; preds = %45, %35, %30
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %14
  %51 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %52 = call i32 @__enqueue_dl_entity(%struct.sched_dl_entity* %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @on_dl_rq(%struct.sched_dl_entity*) #1

declare dso_local i32 @task_contending(%struct.sched_dl_entity*, i32) #1

declare dso_local i32 @update_dl_entity(%struct.sched_dl_entity*, %struct.sched_dl_entity*) #1

declare dso_local i32 @replenish_dl_entity(%struct.sched_dl_entity*, %struct.sched_dl_entity*) #1

declare dso_local i64 @dl_time_before(i32, i32) #1

declare dso_local i32 @rq_clock(i32) #1

declare dso_local i32 @rq_of_dl_rq(i32) #1

declare dso_local i32 @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local i32 @setup_new_dl_entity(%struct.sched_dl_entity*) #1

declare dso_local i32 @__enqueue_dl_entity(%struct.sched_dl_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
