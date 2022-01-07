; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i64, i32 }
%struct.netdev_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@TC_H_MIN_PRIORITY = common dso_local global i64 0, align 8
@TC_H_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @mqprio_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcmsg*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @TC_H_MIN_PRIORITY, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %4
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc* %16, i64 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %9, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %20 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %19)
  store %struct.net_device* %20, %struct.net_device** %10, align 8
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 1
  %24 = call i32 @netdev_txq_to_tc(%struct.net_device* %21, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %39

28:                                               ; preds = %15
  %29 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %30 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @TC_H_MAJ(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @TC_H_MIN_PRIORITY, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @TC_H_MIN(i64 %36)
  %38 = call i32 @TC_H_MAKE(i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %28, %27
  %40 = phi i32 [ 0, %27 ], [ %38, %28 ]
  %41 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %42 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %44 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %49 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %56

50:                                               ; preds = %4
  %51 = load i32, i32* @TC_H_ROOT, align 4
  %52 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %53 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %55 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %39
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @TC_H_MIN(i64 %57)
  %59 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %60 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  ret i32 0
}

declare dso_local %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc*, i64) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @netdev_txq_to_tc(%struct.net_device*, i64) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
