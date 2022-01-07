; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_peek_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_choke.c_choke_peek_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.choke_sched_data = type { i64, i64, %struct.sk_buff** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @choke_peek_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @choke_peek_head(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.choke_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = call %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc* %4)
  store %struct.choke_sched_data* %5, %struct.choke_sched_data** %3, align 8
  %6 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %7 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %14, i32 0, i32 2
  %16 = load %struct.sk_buff**, %struct.sk_buff*** %15, align 8
  %17 = load %struct.choke_sched_data*, %struct.choke_sched_data** %3, align 8
  %18 = getelementptr inbounds %struct.choke_sched_data, %struct.choke_sched_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %16, i64 %19
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %13
  %24 = phi %struct.sk_buff* [ %21, %13 ], [ null, %22 ]
  ret %struct.sk_buff* %24
}

declare dso_local %struct.choke_sched_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
