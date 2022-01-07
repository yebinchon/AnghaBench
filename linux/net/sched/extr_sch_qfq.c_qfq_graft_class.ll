; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_graft_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_graft_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.qfq_class = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @qfq_graft_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_graft_class(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.qfq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.qfq_class*
  store %struct.qfq_class* %13, %struct.qfq_class** %11, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %15 = icmp eq %struct.Qdisc* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %5
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qfq_class*, %struct.qfq_class** %11, align 8
  %21 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.Qdisc* @qdisc_create_dflt(i32 %19, i32* @pfifo_qdisc_ops, i32 %23, i32* null)
  store %struct.Qdisc* %24, %struct.Qdisc** %8, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %26 = icmp eq %struct.Qdisc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %8, align 8
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28, %5
  %30 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %31 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %32 = load %struct.qfq_class*, %struct.qfq_class** %11, align 8
  %33 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %32, i32 0, i32 0
  %34 = call %struct.Qdisc* @qdisc_replace(%struct.Qdisc* %30, %struct.Qdisc* %31, i32* %33)
  %35 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %34, %struct.Qdisc** %35, align 8
  ret i32 0
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32*, i32, i32*) #1

declare dso_local %struct.Qdisc* @qdisc_replace(%struct.Qdisc*, %struct.Qdisc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
