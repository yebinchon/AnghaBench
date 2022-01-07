; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_snat.c_ebt_snat_tg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_snat.c_ebt_snat_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_nat_info* }
%struct.ebt_nat_info = type { i32, i32 }
%struct.arphdr = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EBT_DROP = common dso_local global i32 0, align 4
@NAT_ARP_BIT = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@EBT_VERDICT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_snat_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_snat_tg(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_nat_info*, align 8
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca %struct.arphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %10, align 8
  store %struct.ebt_nat_info* %11, %struct.ebt_nat_info** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i64 @skb_ensure_writable(%struct.sk_buff* %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EBT_DROP, align 4
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %25 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ether_addr_copy(i32 %23, i32 %26)
  %28 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %29 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NAT_ARP_BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ETH_P_ARP, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.arphdr* @skb_header_pointer(%struct.sk_buff* %43, i32 0, i32 4, %struct.arphdr* %8)
  store %struct.arphdr* %44, %struct.arphdr** %7, align 8
  %45 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %46 = icmp eq %struct.arphdr* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EBT_DROP, align 4
  store i32 %48, i32* %3, align 4
  br label %75

49:                                               ; preds = %42
  %50 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %51 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %68

56:                                               ; preds = %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %59 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i64 @skb_store_bits(%struct.sk_buff* %57, i32 4, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @EBT_DROP, align 4
  store i32 %65, i32* %3, align 4
  br label %75

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %34, %19
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %6, align 8
  %70 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %73 = xor i32 %72, -1
  %74 = or i32 %71, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %64, %47, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.arphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.arphdr*) #1

declare dso_local i64 @skb_store_bits(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
