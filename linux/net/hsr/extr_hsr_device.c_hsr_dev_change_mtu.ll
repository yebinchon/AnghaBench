; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_dev_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_dev_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hsr_priv = type { i32 }
%struct.hsr_port = type { i32 }

@HSR_PT_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [112 x i8] c"A HSR master's MTU cannot be greater than the smallest MTU of its slaves minus the HSR Tag length (%d octets).\0A\00", align 1
@HSR_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hsr_dev_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_dev_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hsr_priv*, align 8
  %7 = alloca %struct.hsr_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hsr_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hsr_priv* %9, %struct.hsr_priv** %6, align 8
  %10 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  %11 = load i32, i32* @HSR_PT_MASTER, align 4
  %12 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %10, i32 %11)
  store %struct.hsr_port* %12, %struct.hsr_port** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  %15 = call i32 @hsr_get_max_mtu(%struct.hsr_priv* %14)
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %19 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HSR_HLEN, align 4
  %22 = call i32 @netdev_info(i32 %20, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.hsr_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @hsr_get_max_mtu(%struct.hsr_priv*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
