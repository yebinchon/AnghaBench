; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.plug_sched_data = type { i32, i32, i32, i64, i64, i64 }
%struct.tc_plug_qopt = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @plug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plug_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.plug_sched_data*, align 8
  %9 = alloca %struct.tc_plug_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.plug_sched_data* %11, %struct.plug_sched_data** %8, align 8
  %12 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %13 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %15 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %17 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = icmp eq %struct.nlattr* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %24 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %28 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %27)
  %29 = call i32 @psched_mtu(%struct.TYPE_3__* %28)
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %49

33:                                               ; preds = %3
  %34 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %35 = call %struct.tc_plug_qopt* @nla_data(%struct.nlattr* %34)
  store %struct.tc_plug_qopt* %35, %struct.tc_plug_qopt** %9, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %37 = call i32 @nla_len(%struct.nlattr* %36)
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %33
  %44 = load %struct.tc_plug_qopt*, %struct.tc_plug_qopt** %9, align 8
  %45 = getelementptr inbounds %struct.tc_plug_qopt, %struct.tc_plug_qopt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %48 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %22
  %50 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %51 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(%struct.TYPE_3__*) #1

declare dso_local %struct.tc_plug_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
