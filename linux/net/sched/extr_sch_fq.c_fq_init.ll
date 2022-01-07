; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fq_sched_data = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@RB_ROOT = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @fq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.fq_sched_data*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.fq_sched_data* %10, %struct.fq_sched_data** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 0
  store i32 10000, i32* %12, align 4
  %13 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %14 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %13, i32 0, i32 0
  store i32 100, i32* %14, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = call i32 @qdisc_dev(%struct.Qdisc* %15)
  %17 = call i32 @psched_mtu(i32 %16)
  %18 = mul nsw i32 2, %17
  %19 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %20 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %22 = call i32 @qdisc_dev(%struct.Qdisc* %21)
  %23 = call i32 @psched_mtu(i32 %22)
  %24 = mul nsw i32 10, %23
  %25 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %26 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = call i32 @msecs_to_jiffies(i32 40)
  %28 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %29 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %31 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %30, i32 0, i32 3
  store i64 -1, i64* %31, align 8
  %32 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %33 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %32, i32 0, i32 4
  store i64 -1, i64* %33, align 8
  %34 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %35 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %34, i32 0, i32 5
  store i32 1, i32* %35, align 8
  %36 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %37 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %36, i32 0, i32 14
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %40 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @RB_ROOT, align 4
  %43 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %44 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  %45 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %46 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %45, i32 0, i32 11
  store i32* null, i32** %46, align 8
  %47 = call i32 @ilog2(i32 1024)
  %48 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %49 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %51 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %50, i32 0, i32 6
  store i32 1023, i32* %51, align 4
  %52 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %53 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %52, i32 0, i32 7
  store i32 68750, i32* %53, align 8
  %54 = load i64, i64* @NSEC_PER_USEC, align 8
  %55 = trunc i64 %54 to i32
  %56 = mul i32 %55, -1
  %57 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %58 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %60 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %59, i32 0, i32 10
  %61 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %62 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %63 = call i32 @qdisc_watchdog_init_clockid(i32* %60, %struct.Qdisc* %61, i32 %62)
  %64 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %3
  %67 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %70 = call i32 @fq_change(%struct.Qdisc* %67, %struct.nlattr* %68, %struct.netlink_ext_ack* %69)
  store i32 %70, i32* %8, align 4
  br label %77

71:                                               ; preds = %3
  %72 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %73 = load %struct.fq_sched_data*, %struct.fq_sched_data** %7, align 8
  %74 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @fq_resize(%struct.Qdisc* %72, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @qdisc_watchdog_init_clockid(i32*, %struct.Qdisc*, i32) #1

declare dso_local i32 @fq_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @fq_resize(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
