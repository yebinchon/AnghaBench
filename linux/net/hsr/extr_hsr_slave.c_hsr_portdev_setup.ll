; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_slave.c_hsr_portdev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_slave.c_hsr_portdev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hsr_port = type { i32 }

@hsr_handle_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.hsr_port*)* @hsr_portdev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_portdev_setup(%struct.net_device* %0, %struct.hsr_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.hsr_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.hsr_port* %1, %struct.hsr_port** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32 @dev_hold(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @dev_set_promiscuity(%struct.net_device* %9, i32 1)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load i32, i32* @hsr_handle_frame, align 4
  %17 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %18 = call i32 @netdev_rx_handler_register(%struct.net_device* %15, i32 %16, %struct.hsr_port* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @dev_disable_lro(%struct.net_device* %23)
  store i32 0, i32* %3, align 4
  br label %32

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @dev_set_promiscuity(%struct.net_device* %26, i32 -1)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @dev_put(%struct.net_device* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.hsr_port*) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
