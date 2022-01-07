; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_master_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_teql.c_teql_master_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.teql_master = type { %struct.Qdisc* }
%struct.Qdisc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @teql_master_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teql_master_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.teql_master*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.teql_master* @netdev_priv(%struct.net_device* %8)
  store %struct.teql_master* %9, %struct.teql_master** %6, align 8
  %10 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %11 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %10, i32 0, i32 0
  %12 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  store %struct.Qdisc* %12, %struct.Qdisc** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %14 = icmp ne %struct.Qdisc* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %19 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %29 = call %struct.Qdisc* @NEXT_SLAVE(%struct.Qdisc* %28)
  store %struct.Qdisc* %29, %struct.Qdisc** %7, align 8
  %30 = load %struct.teql_master*, %struct.teql_master** %6, align 8
  %31 = getelementptr inbounds %struct.teql_master, %struct.teql_master* %30, i32 0, i32 0
  %32 = load %struct.Qdisc*, %struct.Qdisc** %31, align 8
  %33 = icmp ne %struct.Qdisc* %29, %32
  br i1 %33, label %16, label %34

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.teql_master* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @NEXT_SLAVE(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
