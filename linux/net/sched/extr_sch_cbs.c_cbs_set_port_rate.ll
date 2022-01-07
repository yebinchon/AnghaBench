; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_set_port_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_set_port_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cbs_sched_data = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@BYTES_PER_KBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cbs: set %s's port_rate to: %lld, linkspeed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cbs_sched_data*)* @cbs_set_port_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbs_set_port_rate(%struct.net_device* %0, %struct.cbs_sched_data* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cbs_sched_data*, align 8
  %5 = alloca %struct.ethtool_link_ksettings, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cbs_sched_data* %1, %struct.cbs_sched_data** %4, align 8
  %9 = load i32, i32* @SPEED_10, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @__ethtool_get_link_ksettings(%struct.net_device* %10, %struct.ethtool_link_ksettings* %5)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %31

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SPEED_UNKNOWN, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %20, %15
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = load i32, i32* @BYTES_PER_KBIT, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %4, align 8
  %37 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @atomic64_set(i32* %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %4, align 8
  %45 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %44, i32 0, i32 0
  %46 = call i64 @atomic64_read(i32* %45)
  %47 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_dbg(%struct.net_device* %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %46, i32 %49)
  ret void
}

declare dso_local i32 @__ethtool_get_link_ksettings(%struct.net_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i64, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
