; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock_tap.c___vsock_deliver_tap_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock_tap.c___vsock_deliver_tap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @__vsock_deliver_tap_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vsock_deliver_tap_skb(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %7, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @dev_hold(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @dev_queue_xmit(%struct.sk_buff* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @net_xmit_errno(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %12
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @dev_put(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
