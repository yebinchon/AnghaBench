; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_codel_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_codel.c_codel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.codel_sched_data = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DEFAULT_CODEL_LIMIT = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @codel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codel_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.codel_sched_data*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.codel_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.codel_sched_data* %11, %struct.codel_sched_data** %8, align 8
  %12 = load i32, i32* @DEFAULT_CODEL_LIMIT, align 4
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.codel_sched_data*, %struct.codel_sched_data** %8, align 8
  %16 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %15, i32 0, i32 0
  %17 = call i32 @codel_params_init(%struct.TYPE_2__* %16)
  %18 = load %struct.codel_sched_data*, %struct.codel_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %18, i32 0, i32 2
  %20 = call i32 @codel_vars_init(i32* %19)
  %21 = load %struct.codel_sched_data*, %struct.codel_sched_data** %8, align 8
  %22 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %21, i32 0, i32 1
  %23 = call i32 @codel_stats_init(i32* %22)
  %24 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %25 = call i32 @qdisc_dev(%struct.Qdisc* %24)
  %26 = call i32 @psched_mtu(i32 %25)
  %27 = load %struct.codel_sched_data*, %struct.codel_sched_data** %8, align 8
  %28 = getelementptr inbounds %struct.codel_sched_data, %struct.codel_sched_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @codel_change(%struct.Qdisc* %33, %struct.nlattr* %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %61

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %49 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %60

53:                                               ; preds = %42
  %54 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %47
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @codel_params_init(%struct.TYPE_2__*) #1

declare dso_local i32 @codel_vars_init(i32*) #1

declare dso_local i32 @codel_stats_init(i32*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @codel_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
