; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_offload_graft_root.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_offload_graft_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.Qdisc = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_root_qopt_offload = type { i32, i32, i32 }

@TCQ_F_INGRESS = common dso_local global i32 0, align 4
@TC_ROOT_GRAFT = common dso_local global i32 0, align 4
@TC_SETUP_ROOT_QDISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.netlink_ext_ack*)* @qdisc_offload_graft_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdisc_offload_graft_root(%struct.net_device* %0, %struct.Qdisc* %1, %struct.Qdisc* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.tc_root_qopt_offload, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %10 = getelementptr inbounds %struct.tc_root_qopt_offload, %struct.tc_root_qopt_offload* %9, i32 0, i32 0
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = icmp ne %struct.Qdisc* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TCQ_F_INGRESS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %13, %4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %22 = icmp ne %struct.Qdisc* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TCQ_F_INGRESS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi i1 [ true, %13 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = getelementptr inbounds %struct.tc_root_qopt_offload, %struct.tc_root_qopt_offload* %9, i32 0, i32 1
  %36 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %37 = icmp ne %struct.Qdisc* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %40 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  store i32 %44, i32* %35, align 4
  %45 = getelementptr inbounds %struct.tc_root_qopt_offload, %struct.tc_root_qopt_offload* %9, i32 0, i32 2
  %46 = load i32, i32* @TC_ROOT_GRAFT, align 4
  store i32 %46, i32* %45, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %49 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %50 = load i32, i32* @TC_SETUP_ROOT_QDISC, align 4
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %52 = call i32 @qdisc_offload_graft_helper(%struct.net_device* %47, i32* null, %struct.Qdisc* %48, %struct.Qdisc* %49, i32 %50, %struct.tc_root_qopt_offload* %9, %struct.netlink_ext_ack* %51)
  ret void
}

declare dso_local i32 @qdisc_offload_graft_helper(%struct.net_device*, i32*, %struct.Qdisc*, %struct.Qdisc*, i32, %struct.tc_root_qopt_offload*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
