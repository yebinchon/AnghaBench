; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.tc_mq_qopt_offload*)* }
%struct.tc_mq_qopt_offload = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_MQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32)* @mq_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_offload(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.tc_mq_qopt_offload, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %7, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %7, i32 0, i32 1
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i32 @tc_can_offload(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.net_device*, i32, %struct.tc_mq_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_mq_qopt_offload*)** %23, align 8
  %25 = icmp ne i32 (%struct.net_device*, i32, %struct.tc_mq_qopt_offload*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.net_device*, i32, %struct.tc_mq_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_mq_qopt_offload*)** %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load i32, i32* @TC_SETUP_QDISC_MQ, align 4
  %37 = call i32 %34(%struct.net_device* %35, i32 %36, %struct.tc_mq_qopt_offload* %7)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @tc_can_offload(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
