; ModuleID = '/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_eth_type_trans.c'
source_filename = "/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_eth_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.ethhdr = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_XDSA = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eth_type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  store %struct.net_device* %9, %struct.net_device** %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_reset_mac_header(%struct.sk_buff* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @ETH_HLEN, align 4
  %20 = call i32 @skb_pull_inline(%struct.sk_buff* %18, i32 %19)
  %21 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %22 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ether_addr_equal_64bits(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %2
  %34 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %35 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_multicast_ether_addr_64bits(i32 %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ether_addr_equal_64bits(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @PACKET_BROADCAST, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @PACKET_MULTICAST, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %62

58:                                               ; preds = %33
  %59 = load i32, i32* @PACKET_OTHERHOST, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %57
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netdev_uses_dsa(%struct.net_device* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i64 @dsa_can_decode(%struct.sk_buff* %69, %struct.net_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @ETH_P_XDSA, align 4
  %75 = call i32 @htons(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %68, %63
  %77 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %78 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @eth_proto_is_802_3(i32 %79)
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %85 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %3, align 4
  br label %103

87:                                               ; preds = %76
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i16* @skb_header_pointer(%struct.sk_buff* %88, i32 0, i32 2, i16* %6)
  store i16* %89, i16** %7, align 8
  %90 = load i16*, i16** %7, align 8
  %91 = icmp ne i16* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i16*, i16** %7, align 8
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp eq i32 %95, 65535
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @ETH_P_802_3, align 4
  %99 = call i32 @htons(i32 %98)
  store i32 %99, i32* %3, align 4
  br label %103

100:                                              ; preds = %92, %87
  %101 = load i32, i32* @ETH_P_802_2, align 4
  %102 = call i32 @htons(i32 %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %97, %83, %73
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_inline(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr_64bits(i32) #1

declare dso_local i32 @netdev_uses_dsa(%struct.net_device*) #1

declare dso_local i64 @dsa_can_decode(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @eth_proto_is_802_3(i32) #1

declare dso_local i16* @skb_header_pointer(%struct.sk_buff*, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
