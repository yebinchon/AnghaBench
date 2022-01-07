; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_slot_dequeue_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_slot_dequeue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff*, %struct.sk_buff* }
%struct.sfq_slot = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sfq_slot*)* @slot_dequeue_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @slot_dequeue_head(%struct.sfq_slot* %0) #0 {
  %2 = alloca %struct.sfq_slot*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sfq_slot* %0, %struct.sfq_slot** %2, align 8
  %4 = load %struct.sfq_slot*, %struct.sfq_slot** %2, align 8
  %5 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %10 = load %struct.sfq_slot*, %struct.sfq_slot** %2, align 8
  %11 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %10, i32 0, i32 0
  store %struct.sk_buff* %9, %struct.sk_buff** %11, align 8
  %12 = load %struct.sfq_slot*, %struct.sfq_slot** %2, align 8
  %13 = bitcast %struct.sfq_slot* %12 to %struct.sk_buff*
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  store %struct.sk_buff* %13, %struct.sk_buff** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
