; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_graft_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_graft_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.hfsc_class = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @hfsc_graft_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_graft_class(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.hfsc_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %9, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = inttoptr i64 %13 to %struct.hfsc_class*
  store %struct.hfsc_class* %14, %struct.hfsc_class** %12, align 8
  %15 = load %struct.hfsc_class*, %struct.hfsc_class** %12, align 8
  %16 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %5
  %23 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %24 = icmp eq %struct.Qdisc* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hfsc_class*, %struct.hfsc_class** %12, align 8
  %30 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.Qdisc* @qdisc_create_dflt(i32 %28, i32* @pfifo_qdisc_ops, i32 %32, i32* null)
  store %struct.Qdisc* %33, %struct.Qdisc** %9, align 8
  %34 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %35 = icmp eq %struct.Qdisc* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %9, align 8
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %41 = load %struct.hfsc_class*, %struct.hfsc_class** %12, align 8
  %42 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %41, i32 0, i32 1
  %43 = call %struct.Qdisc* @qdisc_replace(%struct.Qdisc* %39, %struct.Qdisc* %40, i32* %42)
  %44 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  store %struct.Qdisc* %43, %struct.Qdisc** %44, align 8
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32*, i32, i32*) #1

declare dso_local %struct.Qdisc* @qdisc_replace(%struct.Qdisc*, %struct.Qdisc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
