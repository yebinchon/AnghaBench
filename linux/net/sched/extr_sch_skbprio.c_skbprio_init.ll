; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_skbprio.c_skbprio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.skbprio_sched_data = type { i32, i64, i32, i32* }

@SKBPRIO_MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @skbprio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skbprio_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.skbprio_sched_data*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.skbprio_sched_data* %11, %struct.skbprio_sched_data** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %8, align 8
  %18 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @__skb_queue_head_init(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %8, align 8
  %29 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %28, i32 0, i32 2
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @SKBPRIO_MAX_PRIORITY, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.skbprio_sched_data*, %struct.skbprio_sched_data** %8, align 8
  %36 = getelementptr inbounds %struct.skbprio_sched_data, %struct.skbprio_sched_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %38 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %37, i32 0, i32 0
  store i32 64, i32* %38, align 4
  %39 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %47

42:                                               ; preds = %27
  %43 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %46 = call i32 @skbprio_change(%struct.Qdisc* %43, %struct.nlattr* %44, %struct.netlink_ext_ack* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.skbprio_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @skbprio_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
