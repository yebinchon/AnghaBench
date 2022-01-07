; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.prio_sched_data = type { i32* }
%struct.tc_prio_qopt_offload = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@TC_PRIO_GRAFT = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @prio_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.prio_sched_data*, align 8
  %12 = alloca %struct.tc_prio_qopt_offload, align 8
  %13 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = call %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.prio_sched_data* %15, %struct.prio_sched_data** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 1
  store i64 %17, i64* %13, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %19 = icmp eq %struct.Qdisc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %8, align 8
  br label %21

21:                                               ; preds = %20, %5
  %22 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %24 = load %struct.prio_sched_data*, %struct.prio_sched_data** %11, align 8
  %25 = getelementptr inbounds %struct.prio_sched_data, %struct.prio_sched_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call %struct.Qdisc* @qdisc_replace(%struct.Qdisc* %22, %struct.Qdisc* %23, i32* %28)
  %30 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %29, %struct.Qdisc** %30, align 8
  %31 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %32 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %12, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %36 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %12, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %43 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %12, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @TC_PRIO_GRAFT, align 4
  %48 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %12, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %50 = call i32 @qdisc_dev(%struct.Qdisc* %49)
  %51 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %53 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %53, align 8
  %55 = load i32, i32* @TC_SETUP_QDISC_PRIO, align 4
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %57 = call i32 @qdisc_offload_graft_helper(i32 %50, %struct.Qdisc* %51, %struct.Qdisc* %52, %struct.Qdisc* %54, i32 %55, %struct.tc_prio_qopt_offload* %12, %struct.netlink_ext_ack* %56)
  ret i32 0
}

declare dso_local %struct.prio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_replace(%struct.Qdisc*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @qdisc_offload_graft_helper(i32, %struct.Qdisc*, %struct.Qdisc*, %struct.Qdisc*, i32, %struct.tc_prio_qopt_offload*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
