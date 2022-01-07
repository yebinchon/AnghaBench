; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_tcf_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_tcf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.multiq_sched_data = type { %struct.tcf_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)* @multiq_tcf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @multiq_tcf_block(%struct.Qdisc* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_block*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.multiq_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.multiq_sched_data* %10, %struct.multiq_sched_data** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.tcf_block* null, %struct.tcf_block** %4, align 8
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %16 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %15, i32 0, i32 0
  %17 = load %struct.tcf_block*, %struct.tcf_block** %16, align 8
  store %struct.tcf_block* %17, %struct.tcf_block** %4, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  ret %struct.tcf_block* %19
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
