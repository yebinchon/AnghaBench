; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_deliver_tap_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_af_netlink.c___netlink_deliver_tap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device*, i32, %struct.sock* }
%struct.sock = type { i64 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PACKET_KERNEL = common dso_local global i32 0, align 4
@PACKET_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @__netlink_deliver_tap_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__netlink_deliver_tap_skb(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 4
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @dev_net(%struct.net_device* %14)
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call i32 @sock_net(%struct.sock* %16)
  %18 = call i32 @net_eq(i32 %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @dev_hold(%struct.net_device* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @is_vmalloc_addr(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @netlink_to_full_skb(%struct.sk_buff* %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %6, align 8
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  store %struct.net_device* %41, %struct.net_device** %43, align 8
  %44 = load %struct.sock*, %struct.sock** %7, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = call i64 @netlink_is_kernel(%struct.sock* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @PACKET_KERNEL, align 4
  br label %58

56:                                               ; preds = %40
  %57 = load i32, i32* @PACKET_USER, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @skb_reset_network_header(%struct.sk_buff* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 @dev_queue_xmit(%struct.sk_buff* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @net_xmit_errno(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %58
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call i32 @dev_put(%struct.net_device* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i64 @is_vmalloc_addr(i32) #1

declare dso_local %struct.sk_buff* @netlink_to_full_skb(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @netlink_is_kernel(%struct.sock*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

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
