; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_graft_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_graft_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_red_qopt_offload = type { i32, i32, i32, i32 }

@TC_RED_GRAFT = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.Qdisc*, %struct.Qdisc*, %struct.netlink_ext_ack*)* @red_graft_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @red_graft_offload(%struct.Qdisc* %0, %struct.Qdisc* %1, %struct.Qdisc* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.tc_red_qopt_offload, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %10 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %9, i32 0, i32 0
  %11 = load i32, i32* @TC_RED_GRAFT, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %9, i32 0, i32 1
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %9, i32 0, i32 2
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %9, i32 0, i32 3
  %21 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %25 = call i32 @qdisc_dev(%struct.Qdisc* %24)
  %26 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %29 = load i32, i32* @TC_SETUP_QDISC_RED, align 4
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %31 = call i32 @qdisc_offload_graft_helper(i32 %25, %struct.Qdisc* %26, %struct.Qdisc* %27, %struct.Qdisc* %28, i32 %29, %struct.tc_red_qopt_offload* %9, %struct.netlink_ext_ack* %30)
  ret void
}

declare dso_local i32 @qdisc_offload_graft_helper(i32, %struct.Qdisc*, %struct.Qdisc*, %struct.Qdisc*, i32, %struct.tc_red_qopt_offload*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
