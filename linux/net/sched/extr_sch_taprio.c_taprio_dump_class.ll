; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.netdev_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @taprio_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcmsg*, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %8, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.netdev_queue* @taprio_queue_get(%struct.Qdisc* %10, i64 %11)
  store %struct.netdev_queue* %12, %struct.netdev_queue** %9, align 8
  %13 = load i32, i32* @TC_H_ROOT, align 4
  %14 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %15 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @TC_H_MIN(i64 %16)
  %18 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %19 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %23 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tcmsg*, %struct.tcmsg** %8, align 8
  %28 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret i32 0
}

declare dso_local %struct.netdev_queue* @taprio_queue_get(%struct.Qdisc*, i64) #1

declare dso_local i32 @TC_H_MIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
