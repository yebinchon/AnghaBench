; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_dev_ingress_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_dev_ingress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net_device = type { i32 }
%struct.Qdisc_class_ops = type { %struct.tcf_block* (%struct.Qdisc*, i32, i32*)* }
%struct.Qdisc = type opaque
%struct.Qdisc.0 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Qdisc_class_ops* }
%struct.TYPE_4__ = type { %struct.Qdisc.0* }

@TC_H_MIN_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.net_device*)* @tc_dev_ingress_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @tc_dev_ingress_block(%struct.net_device* %0) #0 {
  %2 = alloca %struct.tcf_block*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.Qdisc_class_ops*, align 8
  %5 = alloca %struct.Qdisc.0*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.TYPE_4__* @dev_ingress_queue(%struct.net_device* %6)
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.tcf_block* null, %struct.tcf_block** %2, align 8
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.TYPE_4__* @dev_ingress_queue(%struct.net_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.Qdisc.0*, %struct.Qdisc.0** %13, align 8
  store %struct.Qdisc.0* %14, %struct.Qdisc.0** %5, align 8
  %15 = load %struct.Qdisc.0*, %struct.Qdisc.0** %5, align 8
  %16 = icmp ne %struct.Qdisc.0* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store %struct.tcf_block* null, %struct.tcf_block** %2, align 8
  br label %41

18:                                               ; preds = %10
  %19 = load %struct.Qdisc.0*, %struct.Qdisc.0** %5, align 8
  %20 = getelementptr inbounds %struct.Qdisc.0, %struct.Qdisc.0* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %22, align 8
  store %struct.Qdisc_class_ops* %23, %struct.Qdisc_class_ops** %4, align 8
  %24 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %4, align 8
  %25 = icmp ne %struct.Qdisc_class_ops* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store %struct.tcf_block* null, %struct.tcf_block** %2, align 8
  br label %41

27:                                               ; preds = %18
  %28 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %4, align 8
  %29 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %28, i32 0, i32 0
  %30 = load %struct.tcf_block* (%struct.Qdisc*, i32, i32*)*, %struct.tcf_block* (%struct.Qdisc*, i32, i32*)** %29, align 8
  %31 = icmp ne %struct.tcf_block* (%struct.Qdisc*, i32, i32*)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.tcf_block* null, %struct.tcf_block** %2, align 8
  br label %41

33:                                               ; preds = %27
  %34 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %4, align 8
  %35 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %34, i32 0, i32 0
  %36 = load %struct.tcf_block* (%struct.Qdisc*, i32, i32*)*, %struct.tcf_block* (%struct.Qdisc*, i32, i32*)** %35, align 8
  %37 = load %struct.Qdisc.0*, %struct.Qdisc.0** %5, align 8
  %38 = bitcast %struct.Qdisc.0* %37 to %struct.Qdisc*
  %39 = load i32, i32* @TC_H_MIN_INGRESS, align 4
  %40 = call %struct.tcf_block* %36(%struct.Qdisc* %38, i32 %39, i32* null)
  store %struct.tcf_block* %40, %struct.tcf_block** %2, align 8
  br label %41

41:                                               ; preds = %33, %32, %26, %17, %9
  %42 = load %struct.tcf_block*, %struct.tcf_block** %2, align 8
  ret %struct.tcf_block* %42
}

declare dso_local %struct.TYPE_4__* @dev_ingress_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
