; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_tcf_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_tcf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.htb_sched = type { %struct.tcf_block* }
%struct.htb_class = type { %struct.tcf_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)* @htb_tcf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @htb_tcf_block(%struct.Qdisc* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.htb_sched*, align 8
  %8 = alloca %struct.htb_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.htb_sched* %10, %struct.htb_sched** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.htb_class*
  store %struct.htb_class* %12, %struct.htb_class** %8, align 8
  %13 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %14 = icmp ne %struct.htb_class* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 0
  %18 = load %struct.tcf_block*, %struct.tcf_block** %17, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.htb_sched*, %struct.htb_sched** %7, align 8
  %21 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %20, i32 0, i32 0
  %22 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi %struct.tcf_block* [ %18, %15 ], [ %22, %19 ]
  ret %struct.tcf_block* %24
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
