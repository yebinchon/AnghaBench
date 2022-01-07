; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.atm_qdisc_data = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"atm_tc_dequeue(sch %p,[qdisc %p])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*)* @atm_tc_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @atm_tc_dequeue(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.atm_qdisc_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %5)
  store %struct.atm_qdisc_data* %6, %struct.atm_qdisc_data** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %3, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %7, %struct.atm_qdisc_data* %8)
  %10 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %3, align 8
  %11 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %10, i32 0, i32 1
  %12 = call i32 @tasklet_schedule(i32* %11)
  %13 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %3, align 8
  %14 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sk_buff* @qdisc_dequeue_peeked(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %27
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_peeked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
