; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fwd_netdev.c_nft_fwd_neigh_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fwd_netdev.c_nft_fwd_neigh_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { %struct.sk_buff* }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.nft_fwd_neigh = type { i64, i64, i32 }
%struct.iphdr = type { i32 }
%struct.ipv6hdr = type { i32 }

@NF_STOLEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NEIGH_ARP_TABLE = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NEIGH_ND_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_fwd_neigh_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_fwd_neigh_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_fwd_neigh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.ipv6hdr*, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %16 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %17 = call %struct.nft_fwd_neigh* @nft_expr_priv(%struct.nft_expr* %16)
  store %struct.nft_fwd_neigh* %17, %struct.nft_fwd_neigh** %7, align 8
  %18 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %19 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %7, align 8
  %22 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %27 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %7, align 8
  %30 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @NF_STOLEN, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %36 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %11, align 8
  %38 = load %struct.nft_fwd_neigh*, %struct.nft_fwd_neigh** %7, align 8
  %39 = getelementptr inbounds %struct.nft_fwd_neigh, %struct.nft_fwd_neigh* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %85 [
    i32 129, label %41
    i32 128, label %62
  ]

41:                                               ; preds = %3
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ETH_P_IP, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NFT_BREAK, align 4
  store i32 %49, i32* %10, align 4
  br label %104

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = call i32 @skb_try_make_writable(%struct.sk_buff* %51, i32 4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @NF_DROP, align 4
  store i32 %55, i32* %10, align 4
  br label %104

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %57)
  store %struct.iphdr* %58, %struct.iphdr** %14, align 8
  %59 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %60 = call i32 @ip_decrease_ttl(%struct.iphdr* %59)
  %61 = load i32, i32* @NEIGH_ARP_TABLE, align 4
  store i32 %61, i32* %13, align 4
  br label %87

62:                                               ; preds = %3
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ETH_P_IPV6, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @NFT_BREAK, align 4
  store i32 %70, i32* %10, align 4
  br label %104

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = call i32 @skb_try_make_writable(%struct.sk_buff* %72, i32 4)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @NF_DROP, align 4
  store i32 %76, i32* %10, align 4
  br label %104

77:                                               ; preds = %71
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %78)
  store %struct.ipv6hdr* %79, %struct.ipv6hdr** %15, align 8
  %80 = load %struct.ipv6hdr*, %struct.ipv6hdr** %15, align 8
  %81 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @NEIGH_ND_TABLE, align 4
  store i32 %84, i32* %13, align 4
  br label %87

85:                                               ; preds = %3
  %86 = load i32, i32* @NFT_BREAK, align 4
  store i32 %86, i32* %10, align 4
  br label %104

87:                                               ; preds = %77, %56
  %88 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %89 = call i32 @nft_net(%struct.nft_pktinfo* %88)
  %90 = load i32, i32* %9, align 4
  %91 = call %struct.net_device* @dev_get_by_index_rcu(i32 %89, i32 %90)
  store %struct.net_device* %91, %struct.net_device** %12, align 8
  %92 = load %struct.net_device*, %struct.net_device** %12, align 8
  %93 = icmp eq %struct.net_device* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %109

95:                                               ; preds = %87
  %96 = load %struct.net_device*, %struct.net_device** %12, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  store %struct.net_device* %96, %struct.net_device** %98, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.net_device*, %struct.net_device** %12, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = call i32 @neigh_xmit(i32 %99, %struct.net_device* %100, i8* %101, %struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %95, %85, %75, %69, %54, %48
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %107 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %94
  ret void
}

declare dso_local %struct.nft_fwd_neigh* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_decrease_ttl(%struct.iphdr*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(i32, i32) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local i32 @neigh_xmit(i32, %struct.net_device*, i8*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
