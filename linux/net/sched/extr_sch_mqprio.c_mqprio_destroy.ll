; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.net_device*, i32, %struct.tc_mqprio_qopt_offload*)* }
%struct.tc_mqprio_qopt_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mqprio_sched = type { i32, i64, i64* }

@TC_SETUP_QDISC_MQPRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @mqprio_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqprio_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mqprio_sched*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_mqprio_qopt_offload, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = call %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.mqprio_sched* %10, %struct.mqprio_sched** %4, align 8
  %11 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %12 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %24 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %22, %16
  %32 = phi i1 [ false, %16 ], [ %30, %22 ]
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %35 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @qdisc_put(i64 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %16

45:                                               ; preds = %31
  %46 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %47 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @kfree(i64* %48)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %52 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.net_device*, i32, %struct.tc_mqprio_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_mqprio_qopt_offload*)** %59, align 8
  %61 = icmp ne i32 (%struct.net_device*, i32, %struct.tc_mqprio_qopt_offload*)* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = bitcast %struct.tc_mqprio_qopt_offload* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %63, i8 0, i64 4, i1 false)
  %64 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %65 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %76 [
    i32 128, label %67
    i32 129, label %67
  ]

67:                                               ; preds = %62, %62
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.net_device*, i32, %struct.tc_mqprio_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_mqprio_qopt_offload*)** %71, align 8
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load i32, i32* @TC_SETUP_QDISC_MQPRIO, align 4
  %75 = call i32 %72(%struct.net_device* %73, i32 %74, %struct.tc_mqprio_qopt_offload* %6)
  br label %77

76:                                               ; preds = %62
  br label %81

77:                                               ; preds = %67
  br label %81

78:                                               ; preds = %55, %50
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @netdev_set_num_tc(%struct.net_device* %79, i32 0)
  br label %81

81:                                               ; preds = %76, %78, %77
  ret void
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put(i64) #1

declare dso_local i32 @kfree(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
