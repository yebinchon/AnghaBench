; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c___dequeue_dl_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c___dequeue_dl_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32 }
%struct.dl_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*)* @__dequeue_dl_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dequeue_dl_entity(%struct.sched_dl_entity* %0) #0 {
  %2 = alloca %struct.sched_dl_entity*, align 8
  %3 = alloca %struct.dl_rq*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %2, align 8
  %4 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %5 = call %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* %4)
  store %struct.dl_rq* %5, %struct.dl_rq** %3, align 8
  %6 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %7 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %6, i32 0, i32 0
  %8 = call i64 @RB_EMPTY_NODE(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %13 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %12, i32 0, i32 0
  %14 = load %struct.dl_rq*, %struct.dl_rq** %3, align 8
  %15 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %14, i32 0, i32 0
  %16 = call i32 @rb_erase_cached(i32* %13, i32* %15)
  %17 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %18 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %17, i32 0, i32 0
  %19 = call i32 @RB_CLEAR_NODE(i32* %18)
  %20 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %21 = load %struct.dl_rq*, %struct.dl_rq** %3, align 8
  %22 = call i32 @dec_dl_tasks(%struct.sched_dl_entity* %20, %struct.dl_rq* %21)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local i64 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @dec_dl_tasks(%struct.sched_dl_entity*, %struct.dl_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
