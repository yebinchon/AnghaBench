; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_dup_netdev.c_nf_dup_netdev_egress.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_dup_netdev.c_nf_dup_netdev_egress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_pktinfo = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_dup_netdev_egress(%struct.nft_pktinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.nft_pktinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.nft_pktinfo* %0, %struct.nft_pktinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %8 = call i32 @nft_net(%struct.nft_pktinfo* %7)
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.net_device* @dev_get_by_index_rcu(i32 %8, i32 %9)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp eq %struct.net_device* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %3, align 8
  %16 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @skb_clone(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @nf_do_netdev_egress(%struct.sk_buff* %23, %struct.net_device* %24)
  br label %26

26:                                               ; preds = %13, %22, %14
  ret void
}

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local %struct.sk_buff* @skb_clone(i32, i32) #1

declare dso_local i32 @nf_do_netdev_egress(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
