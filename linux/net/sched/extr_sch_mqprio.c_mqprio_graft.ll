; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@TCQ_F_ONETXQUEUE = common dso_local global i32 0, align 4
@TCQ_F_NOPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @mqprio_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqprio_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %9, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %15 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %14)
  store %struct.net_device* %15, %struct.net_device** %12, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc* %16, i64 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %13, align 8
  %19 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %20 = icmp ne %struct.netdev_queue* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %60

24:                                               ; preds = %5
  %25 = load %struct.net_device*, %struct.net_device** %12, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %12, align 8
  %33 = call i32 @dev_deactivate(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %36 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %37 = call %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %35, %struct.Qdisc* %36)
  %38 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  store %struct.Qdisc* %37, %struct.Qdisc** %38, align 8
  %39 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %40 = icmp ne %struct.Qdisc* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32, i32* @TCQ_F_ONETXQUEUE, align 4
  %43 = load i32, i32* @TCQ_F_NOPARENT, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %46 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_UP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %12, align 8
  %58 = call i32 @dev_activate(%struct.net_device* %57)
  br label %59

59:                                               ; preds = %56, %49
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @mqprio_queue_get(%struct.Qdisc*, i64) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue*, %struct.Qdisc*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
