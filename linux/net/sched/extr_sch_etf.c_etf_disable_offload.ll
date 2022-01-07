; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_disable_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_disable_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)* }
%struct.net_device.0 = type opaque
%struct.tc_etf_qopt_offload = type { i32, i64 }
%struct.etf_sched_data = type { i32, i32 }

@TC_SETUP_QDISC_ETF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Couldn't disable ETF offload for queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.etf_sched_data*)* @etf_disable_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etf_disable_offload(%struct.net_device* %0, %struct.etf_sched_data* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.etf_sched_data*, align 8
  %5 = alloca %struct.tc_etf_qopt_offload, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.etf_sched_data* %1, %struct.etf_sched_data** %4, align 8
  %8 = bitcast %struct.tc_etf_qopt_offload* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.etf_sched_data*, %struct.etf_sched_data** %4, align 8
  %10 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.net_device_ops*, %struct.net_device_ops** %16, align 8
  store %struct.net_device_ops* %17, %struct.net_device_ops** %6, align 8
  %18 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %19 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)** %19, align 8
  %21 = icmp ne i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %42

23:                                               ; preds = %14
  %24 = load %struct.etf_sched_data*, %struct.etf_sched_data** %4, align 8
  %25 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %5, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %30 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = bitcast %struct.net_device* %32 to %struct.net_device.0*
  %34 = load i32, i32* @TC_SETUP_QDISC_ETF, align 4
  %35 = call i32 %31(%struct.net_device.0* %33, i32 %34, %struct.tc_etf_qopt_offload* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %13, %22, %38, %23
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
