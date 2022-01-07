; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.sfb_sched_data = type { i32*, i32, i32 }

@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @sfb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.sfb_sched_data*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.sfb_sched_data* %11, %struct.sfb_sched_data** %8, align 8
  %12 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %13 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %12, i32 0, i32 2
  %14 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %15 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %14, i32 0, i32 1
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @tcf_block_get(i32* %13, i32* %15, %struct.Qdisc* %16, %struct.netlink_ext_ack* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %25 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %24, i32 0, i32 0
  store i32* @noop_qdisc, i32** %25, align 8
  %26 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @sfb_change(%struct.Qdisc* %26, %struct.nlattr* %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @sfb_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
