; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_deliver_clone.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c_deliver_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, %struct.sk_buff*, i32)* @deliver_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deliver_clone(%struct.net_bridge_port* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @__br_forward(%struct.net_bridge_port* %27, %struct.sk_buff* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @__br_forward(%struct.net_bridge_port*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
