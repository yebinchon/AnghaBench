; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_add_running_bw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_add_running_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32 }
%struct.dl_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, %struct.dl_rq*)* @add_running_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_running_bw(%struct.sched_dl_entity* %0, %struct.dl_rq* %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.dl_rq*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store %struct.dl_rq* %1, %struct.dl_rq** %4, align 8
  %5 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %6 = call i32 @dl_entity_is_special(%struct.sched_dl_entity* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %10 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %13 = call i32 @__add_running_bw(i32 %11, %struct.dl_rq* %12)
  br label %14

14:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @dl_entity_is_special(%struct.sched_dl_entity*) #1

declare dso_local i32 @__add_running_bw(i32, %struct.dl_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
