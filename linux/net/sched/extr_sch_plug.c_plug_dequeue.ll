; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.plug_sched_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @plug_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @plug_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.plug_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %6 = call %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.plug_sched_data* %6, %struct.plug_sched_data** %4, align 8
  %7 = load %struct.plug_sched_data*, %struct.plug_sched_data** %4, align 8
  %8 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.plug_sched_data*, %struct.plug_sched_data** %4, align 8
  %14 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = load %struct.plug_sched_data*, %struct.plug_sched_data** %4, align 8
  %19 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.plug_sched_data*, %struct.plug_sched_data** %4, align 8
  %24 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %33

25:                                               ; preds = %17
  %26 = load %struct.plug_sched_data*, %struct.plug_sched_data** %4, align 8
  %27 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %12
  %31 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %32 = call %struct.sk_buff* @qdisc_dequeue_head(%struct.Qdisc* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %2, align 8
  br label %33

33:                                               ; preds = %30, %22, %11
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %34
}

declare dso_local %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_head(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
