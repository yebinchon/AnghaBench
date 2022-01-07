; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_tcf_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_tcf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.drr_sched = type { %struct.tcf_block* }

@.str = private unnamed_addr constant [25 x i8] c"DRR classid must be zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)* @drr_tcf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @drr_tcf_block(%struct.Qdisc* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_block*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.drr_sched*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.drr_sched* %10, %struct.drr_sched** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %15 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.tcf_block* null, %struct.tcf_block** %4, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.drr_sched*, %struct.drr_sched** %8, align 8
  %18 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %17, i32 0, i32 0
  %19 = load %struct.tcf_block*, %struct.tcf_block** %18, align 8
  store %struct.tcf_block* %19, %struct.tcf_block** %4, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.tcf_block*, %struct.tcf_block** %4, align 8
  ret %struct.tcf_block* %21
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
