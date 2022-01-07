; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_prio.c_prio_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32 }
%struct.tc_prio_qopt = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.net_device*, i32, %struct.tc_prio_qopt_offload*)* }
%struct.tc_prio_qopt_offload = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_PRIO_REPLACE = common dso_local global i32 0, align 4
@TC_PRIO_MAX = common dso_local global i64 0, align 8
@TC_PRIO_DESTROY = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.tc_prio_qopt*)* @prio_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_offload(%struct.Qdisc* %0, %struct.tc_prio_qopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.tc_prio_qopt*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.tc_prio_qopt_offload, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.tc_prio_qopt* %1, %struct.tc_prio_qopt** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = bitcast %struct.tc_prio_qopt_offload* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 2
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 3
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call i32 @tc_can_offload(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.net_device*, i32, %struct.tc_prio_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_prio_qopt_offload*)** %26, align 8
  %28 = icmp ne i32 (%struct.net_device*, i32, %struct.tc_prio_qopt_offload*)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %22
  %33 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %5, align 8
  %34 = icmp ne %struct.tc_prio_qopt* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, i32* @TC_PRIO_REPLACE, align 4
  %37 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %5, align 8
  %39 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.tc_prio_qopt*, %struct.tc_prio_qopt** %5, align 8
  %46 = getelementptr inbounds %struct.tc_prio_qopt, %struct.tc_prio_qopt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @TC_PRIO_MAX, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @memcpy(i32* %44, i32 %47, i64 %49)
  %51 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %52 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %58

55:                                               ; preds = %32
  %56 = load i32, i32* @TC_PRIO_DESTROY, align 4
  %57 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %7, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %35
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.net_device*, i32, %struct.tc_prio_qopt_offload*)*, i32 (%struct.net_device*, i32, %struct.tc_prio_qopt_offload*)** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = load i32, i32* @TC_SETUP_QDISC_PRIO, align 4
  %66 = call i32 %63(%struct.net_device* %64, i32 %65, %struct.tc_prio_qopt_offload* %7)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tc_can_offload(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
