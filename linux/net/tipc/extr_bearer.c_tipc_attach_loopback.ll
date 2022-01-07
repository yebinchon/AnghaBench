; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_attach_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_attach_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.tipc_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.net_device* }

@ENODEV = common dso_local global i32 0, align 4
@ETH_P_TIPC = common dso_local global i32 0, align 4
@tipc_loopback_rcv_pkt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_attach_loopback(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tipc_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = getelementptr inbounds %struct.net, %struct.net* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = call %struct.tipc_net* @tipc_net(%struct.net* %9)
  store %struct.tipc_net* %10, %struct.tipc_net** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @dev_hold(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store %struct.net_device* %19, %struct.net_device** %22, align 8
  %23 = load i32, i32* @ETH_P_TIPC, align 4
  %24 = call i32 @htons(i32 %23)
  %25 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %26 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @tipc_loopback_rcv_pkt, align 4
  %29 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %30 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.tipc_net*, %struct.tipc_net** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %32, i32 0, i32 0
  %34 = call i32 @dev_add_pack(%struct.TYPE_2__* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.tipc_net* @tipc_net(%struct.net*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_add_pack(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
