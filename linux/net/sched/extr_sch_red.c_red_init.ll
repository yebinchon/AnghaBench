; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.red_sched_data = type { i32, %struct.Qdisc*, i32* }

@noop_qdisc = common dso_local global i32 0, align 4
@red_adaptative_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @red_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.red_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.red_sched_data* %9, %struct.red_sched_data** %7, align 8
  %10 = load %struct.red_sched_data*, %struct.red_sched_data** %7, align 8
  %11 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %10, i32 0, i32 2
  store i32* @noop_qdisc, i32** %11, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = load %struct.red_sched_data*, %struct.red_sched_data** %7, align 8
  %14 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %13, i32 0, i32 1
  store %struct.Qdisc* %12, %struct.Qdisc** %14, align 8
  %15 = load %struct.red_sched_data*, %struct.red_sched_data** %7, align 8
  %16 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %15, i32 0, i32 0
  %17 = load i32, i32* @red_adaptative_timer, align 4
  %18 = call i32 @timer_setup(i32* %16, i32 %17, i32 0)
  %19 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %22 = call i32 @red_change(%struct.Qdisc* %19, %struct.nlattr* %20, %struct.netlink_ext_ack* %21)
  ret i32 %22
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @red_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
