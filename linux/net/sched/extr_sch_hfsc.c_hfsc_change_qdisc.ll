; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_change_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_change_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.hfsc_sched = type { i32 }
%struct.tc_hfsc_qopt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @hfsc_change_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_change_qdisc(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.hfsc_sched*, align 8
  %9 = alloca %struct.tc_hfsc_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.hfsc_sched* %11, %struct.hfsc_sched** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = call i32 @nla_len(%struct.nlattr* %15)
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %14
  %23 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %24 = call %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr* %23)
  store %struct.tc_hfsc_qopt* %24, %struct.tc_hfsc_qopt** %9, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = call i32 @sch_tree_lock(%struct.Qdisc* %25)
  %27 = load %struct.tc_hfsc_qopt*, %struct.tc_hfsc_qopt** %9, align 8
  %28 = getelementptr inbounds %struct.tc_hfsc_qopt, %struct.tc_hfsc_qopt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hfsc_sched*, %struct.hfsc_sched** %8, align 8
  %31 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %33 = call i32 @sch_tree_unlock(%struct.Qdisc* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
