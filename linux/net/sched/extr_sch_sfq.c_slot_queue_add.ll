; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_slot_queue_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_slot_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfq_slot = type { %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff*, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfq_slot*, %struct.sk_buff*)* @slot_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slot_queue_add(%struct.sfq_slot* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sfq_slot*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sfq_slot* %0, %struct.sfq_slot** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sfq_slot*, %struct.sfq_slot** %3, align 8
  %6 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %5, i32 0, i32 0
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  store %struct.sk_buff* %7, %struct.sk_buff** %9, align 8
  %10 = load %struct.sfq_slot*, %struct.sfq_slot** %3, align 8
  %11 = bitcast %struct.sfq_slot* %10 to %struct.sk_buff*
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  store %struct.sk_buff* %11, %struct.sk_buff** %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.sfq_slot*, %struct.sfq_slot** %3, align 8
  %16 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  store %struct.sk_buff* %14, %struct.sk_buff** %18, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.sfq_slot*, %struct.sfq_slot** %3, align 8
  %21 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %20, i32 0, i32 0
  store %struct.sk_buff* %19, %struct.sk_buff** %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
