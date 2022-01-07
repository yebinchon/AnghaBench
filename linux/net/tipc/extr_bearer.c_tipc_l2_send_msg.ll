; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_l2_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_l2_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i64 }
%struct.tipc_bearer = type { i32 }
%struct.tipc_media_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_TIPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_l2_send_msg(%struct.net* %0, %struct.sk_buff* %1, %struct.tipc_bearer* %2, %struct.tipc_media_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_bearer*, align 8
  %9 = alloca %struct.tipc_media_addr*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tipc_bearer* %2, %struct.tipc_bearer** %8, align 8
  store %struct.tipc_media_addr* %3, %struct.tipc_media_addr** %9, align 8
  %12 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %13 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @rcu_dereference(i32 %14)
  %16 = inttoptr i64 %15 to %struct.net_device*
  store %struct.net_device* %16, %struct.net_device** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %10, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

20:                                               ; preds = %4
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i64 @skb_headroom(%struct.sk_buff* %24)
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @SKB_DATA_ALIGN(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i64 @pskb_expand_head(%struct.sk_buff* %31, i32 %32, i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  store i32 0, i32* %5, align 4
  br label %64

39:                                               ; preds = %30, %20
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @skb_reset_network_header(%struct.sk_buff* %40)
  %42 = load %struct.net_device*, %struct.net_device** %10, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 2
  store %struct.net_device* %42, %struct.net_device** %44, align 8
  %45 = load i32, i32* @ETH_P_TIPC, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load %struct.net_device*, %struct.net_device** %10, align 8
  %51 = load i32, i32* @ETH_P_TIPC, align 4
  %52 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %9, align 8
  %53 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_hard_header(%struct.sk_buff* %49, %struct.net_device* %50, i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @dev_queue_xmit(%struct.sk_buff* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %39, %36, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @rcu_dereference(i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i64) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
