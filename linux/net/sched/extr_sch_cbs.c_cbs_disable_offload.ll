; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_disable_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_disable_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)* }
%struct.net_device.0 = type opaque
%struct.tc_cbs_qopt_offload = type { i32, i64 }
%struct.cbs_sched_data = type { i32, i32, i32, i32 }

@cbs_enqueue_soft = common dso_local global i32 0, align 4
@cbs_dequeue_soft = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_CBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Couldn't disable CBS offload for queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cbs_sched_data*)* @cbs_disable_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbs_disable_offload(%struct.net_device* %0, %struct.cbs_sched_data* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cbs_sched_data*, align 8
  %5 = alloca %struct.tc_cbs_qopt_offload, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cbs_sched_data* %1, %struct.cbs_sched_data** %4, align 8
  %8 = bitcast %struct.tc_cbs_qopt_offload* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %4, align 8
  %10 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* @cbs_enqueue_soft, align 4
  %16 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @cbs_dequeue_soft, align 4
  %19 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %4, align 8
  %20 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.net_device_ops*, %struct.net_device_ops** %22, align 8
  store %struct.net_device_ops* %23, %struct.net_device_ops** %6, align 8
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %25 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)** %25, align 8
  %27 = icmp ne i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %4, align 8
  %31 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %5, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %36 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = bitcast %struct.net_device* %38 to %struct.net_device.0*
  %40 = load i32, i32* @TC_SETUP_QDISC_CBS, align 4
  %41 = call i32 %37(%struct.net_device.0* %39, i32 %40, %struct.tc_cbs_qopt_offload* %5)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %13, %28, %44, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_warn(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
