; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netem_sched_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLG_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"netem: change failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @netem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netem_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.netem_sched_data*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.netem_sched_data* %11, %struct.netem_sched_data** %8, align 8
  %12 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %13 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %12, i32 0, i32 1
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = call i32 @qdisc_watchdog_init(i32* %13, %struct.Qdisc* %14)
  %16 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %35

21:                                               ; preds = %3
  %22 = load i32, i32* @CLG_RANDOM, align 4
  %23 = load %struct.netem_sched_data*, %struct.netem_sched_data** %8, align 8
  %24 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %28 = call i32 @netem_change(%struct.Qdisc* %25, %struct.nlattr* %26, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @netem_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
