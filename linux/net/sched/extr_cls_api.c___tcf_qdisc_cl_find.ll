; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_qdisc_cl_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_qdisc_cl_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc.0*, i32)* }
%struct.Qdisc.0 = type opaque
%struct.netlink_ext_ack = type { i32 }

@TCM_IFINDEX_MAGIC_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Specified class doesn't exist\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, i64*, i32, %struct.netlink_ext_ack*)* @__tcf_qdisc_cl_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcf_qdisc_cl_find(%struct.Qdisc* %0, i32 %1, i64* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @TCM_IFINDEX_MAGIC_BLOCK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @TC_H_MIN(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %25, align 8
  store %struct.Qdisc_class_ops* %26, %struct.Qdisc_class_ops** %12, align 8
  %27 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %12, align 8
  %28 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %27, i32 0, i32 0
  %29 = load i64 (%struct.Qdisc.0*, i32)*, i64 (%struct.Qdisc.0*, i32)** %28, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %31 = bitcast %struct.Qdisc* %30 to %struct.Qdisc.0*
  %32 = load i32, i32* %8, align 4
  %33 = call i64 %29(%struct.Qdisc.0* %31, i32 %32)
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %40 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %17
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38, %16
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @TC_H_MIN(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
