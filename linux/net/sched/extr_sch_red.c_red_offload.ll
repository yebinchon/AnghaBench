; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32 }
%struct.red_sched_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.net_device*, i32, %struct.tc_red_qopt_offload*)* }
%struct.tc_red_qopt_offload = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_RED_REPLACE = common dso_local global i32 0, align 4
@TC_RED_DESTROY = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32)* @red_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_offload(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.red_sched_data*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tc_red_qopt_offload, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.red_sched_data* %10, %struct.red_sched_data** %6, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = bitcast %struct.tc_red_qopt_offload* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false)
  %14 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 2
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 8
  %18 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 3
  %19 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call i32 @tc_can_offload(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.net_device*, i32, %struct.tc_red_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_red_qopt_offload*)** %29, align 8
  %31 = icmp ne i32 (%struct.net_device*, i32, %struct.tc_red_qopt_offload*)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %2
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %98

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load i32, i32* @TC_RED_REPLACE, align 4
  %40 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %42 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %46 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %44, %48
  %50 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %53 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %57 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %55, %59
  %61 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %64 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %70 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %75 = call i32 @red_use_ecn(%struct.red_sched_data* %74)
  %76 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.red_sched_data*, %struct.red_sched_data** %6, align 8
  %79 = call i32 @red_use_harddrop(%struct.red_sched_data* %78)
  %80 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %83 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  br label %89

86:                                               ; preds = %35
  %87 = load i32, i32* @TC_RED_DESTROY, align 4
  %88 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %8, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %38
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (%struct.net_device*, i32, %struct.tc_red_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_red_qopt_offload*)** %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = load i32, i32* @TC_SETUP_QDISC_RED, align 4
  %97 = call i32 %94(%struct.net_device* %95, i32 %96, %struct.tc_red_qopt_offload* %8)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %89, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tc_can_offload(%struct.net_device*) #1

declare dso_local i32 @red_use_ecn(%struct.red_sched_data*) #1

declare dso_local i32 @red_use_harddrop(%struct.red_sched_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
