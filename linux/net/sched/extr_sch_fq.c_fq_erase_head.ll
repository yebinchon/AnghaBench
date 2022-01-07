; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_erase_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_erase_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.fq_flow = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.fq_flow*, %struct.sk_buff*)* @fq_erase_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_erase_head(%struct.Qdisc* %0, %struct.fq_flow* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.fq_flow*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.fq_flow* %1, %struct.fq_flow** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = load %struct.fq_flow*, %struct.fq_flow** %5, align 8
  %9 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %8, i32 0, i32 1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %11 = icmp eq %struct.sk_buff* %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %16 = load %struct.fq_flow*, %struct.fq_flow** %5, align 8
  %17 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %16, i32 0, i32 1
  store %struct.sk_buff* %15, %struct.sk_buff** %17, align 8
  br label %28

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load %struct.fq_flow*, %struct.fq_flow** %5, align 8
  %22 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %21, i32 0, i32 0
  %23 = call i32 @rb_erase(i32* %20, i32* %22)
  %24 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %25 = call i32 @qdisc_dev(%struct.Qdisc* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
