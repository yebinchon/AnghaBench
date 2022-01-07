; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.taprio_sched = type { %struct.Qdisc** }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@TCQ_F_ONETXQUEUE = common dso_local global i32 0, align 4
@TCQ_F_NOPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @taprio_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.taprio_sched*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.netdev_queue*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %9, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %16 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.taprio_sched* %16, %struct.taprio_sched** %12, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %18 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %17)
  store %struct.net_device* %18, %struct.net_device** %13, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.netdev_queue* @taprio_queue_get(%struct.Qdisc* %19, i64 %20)
  store %struct.netdev_queue* %21, %struct.netdev_queue** %14, align 8
  %22 = load %struct.netdev_queue*, %struct.netdev_queue** %14, align 8
  %23 = icmp ne %struct.netdev_queue* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %74

27:                                               ; preds = %5
  %28 = load %struct.net_device*, %struct.net_device** %13, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_UP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %13, align 8
  %36 = call i32 @dev_deactivate(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.taprio_sched*, %struct.taprio_sched** %12, align 8
  %39 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %38, i32 0, i32 0
  %40 = load %struct.Qdisc**, %struct.Qdisc*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %40, i64 %42
  %44 = load %struct.Qdisc*, %struct.Qdisc** %43, align 8
  %45 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  store %struct.Qdisc* %44, %struct.Qdisc** %45, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %47 = load %struct.taprio_sched*, %struct.taprio_sched** %12, align 8
  %48 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %47, i32 0, i32 0
  %49 = load %struct.Qdisc**, %struct.Qdisc*** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %49, i64 %51
  store %struct.Qdisc* %46, %struct.Qdisc** %52, align 8
  %53 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %54 = icmp ne %struct.Qdisc* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = load i32, i32* @TCQ_F_ONETXQUEUE, align 4
  %57 = load i32, i32* @TCQ_F_NOPARENT, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55, %37
  %64 = load %struct.net_device*, %struct.net_device** %13, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFF_UP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.net_device*, %struct.net_device** %13, align 8
  %72 = call i32 @dev_activate(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %63
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.netdev_queue* @taprio_queue_get(%struct.Qdisc*, i64) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
