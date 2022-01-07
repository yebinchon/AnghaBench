; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_pie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.pie_sched_data = type { i32, %struct.Qdisc*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@pie_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @pie_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pie_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.pie_sched_data*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.pie_sched_data* %11, %struct.pie_sched_data** %8, align 8
  %12 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %13 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %12, i32 0, i32 2
  %14 = call i32 @pie_params_init(%struct.TYPE_2__* %13)
  %15 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %16 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %15, i32 0, i32 3
  %17 = call i32 @pie_vars_init(i32* %16)
  %18 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %25 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %26 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %25, i32 0, i32 1
  store %struct.Qdisc* %24, %struct.Qdisc** %26, align 8
  %27 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %28 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %27, i32 0, i32 0
  %29 = load i32, i32* @pie_timer, align 4
  %30 = call i32 @timer_setup(i32* %28, i32 %29, i32 0)
  %31 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %37 = call i32 @pie_change(%struct.Qdisc* %34, %struct.nlattr* %35, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.pie_sched_data*, %struct.pie_sched_data** %8, align 8
  %45 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %44, i32 0, i32 0
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i32, i32* @HZ, align 4
  %48 = sdiv i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = call i32 @mod_timer(i32* %45, i64 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %40
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pie_params_init(%struct.TYPE_2__*) #1

declare dso_local i32 @pie_vars_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @pie_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
