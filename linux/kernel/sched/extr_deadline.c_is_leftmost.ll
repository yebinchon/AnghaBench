; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_is_leftmost.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_is_leftmost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.sched_dl_entity }
%struct.sched_dl_entity = type { i32 }
%struct.dl_rq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.dl_rq*)* @is_leftmost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_leftmost(%struct.task_struct* %0, %struct.dl_rq* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.dl_rq*, align 8
  %5 = alloca %struct.sched_dl_entity*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.dl_rq* %1, %struct.dl_rq** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  store %struct.sched_dl_entity* %7, %struct.sched_dl_entity** %5, align 8
  %8 = load %struct.dl_rq*, %struct.dl_rq** %4, align 8
  %9 = getelementptr inbounds %struct.dl_rq, %struct.dl_rq* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %13 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %12, i32 0, i32 0
  %14 = icmp eq i32* %11, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
