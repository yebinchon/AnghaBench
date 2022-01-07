; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.phonethdr = type { i8*, i8*, i32, i64, i8*, i8* }

@EMSGSIZE = common dso_local global i32 0, align 4
@PNADDR_BROADCAST = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_PHONET = common dso_local global i32 0, align 4
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32, i32, i64, i64)* @pn_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_send(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.phonethdr*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 2
  %20 = icmp sgt i32 %19, 65535
  br i1 %20, label %32, label %21

21:                                               ; preds = %6
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 48
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21, %6
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  br label %150

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @pn_addr(i32 %36)
  %38 = load i64, i64* @PNADDR_BROADCAST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  br label %150

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = call i32 @skb_reset_transport_header(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @skb_headroom(%struct.sk_buff* %46)
  %48 = and i32 %47, 1
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @skb_push(%struct.sk_buff* %50, i32 48)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @skb_reset_network_header(%struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call %struct.phonethdr* @pn_hdr(%struct.sk_buff* %54)
  store %struct.phonethdr* %55, %struct.phonethdr** %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i8* @pn_dev(i32 %56)
  %58 = load %struct.phonethdr*, %struct.phonethdr** %14, align 8
  %59 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @pn_dev(i32 %60)
  %62 = load %struct.phonethdr*, %struct.phonethdr** %14, align 8
  %63 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.phonethdr*, %struct.phonethdr** %14, align 8
  %66 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 48
  %73 = trunc i64 %72 to i32
  %74 = call i32 @__cpu_to_be16(i32 %73)
  %75 = load %struct.phonethdr*, %struct.phonethdr** %14, align 8
  %76 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @pn_obj(i32 %77)
  %79 = load %struct.phonethdr*, %struct.phonethdr** %14, align 8
  %80 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @pn_obj(i32 %81)
  %83 = load %struct.phonethdr*, %struct.phonethdr** %14, align 8
  %84 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @ETH_P_PHONET, align 4
  %86 = call i32 @htons(i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 3
  store %struct.net_device* %91, %struct.net_device** %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PACKET_LOOPBACK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %43
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = call i32 @skb_reset_mac_header(%struct.sk_buff* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = call i32 @skb_orphan(%struct.sk_buff* %102)
  %104 = load i64, i64* %13, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i64 @netif_rx(%struct.sk_buff* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %117

110:                                              ; preds = %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = call i64 @netif_rx_ni(%struct.sk_buff* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @ENOBUFS, align 4
  %116 = sub nsw i32 0, %115
  br label %118

117:                                              ; preds = %110, %106
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 0, %117 ]
  store i32 %119, i32* %15, align 4
  br label %148

120:                                              ; preds = %43
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = load %struct.net_device*, %struct.net_device** %9, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ntohs(i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_hard_header(%struct.sk_buff* %121, %struct.net_device* %122, i32 %126, i32* null, i32* null, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = load i32, i32* @EHOSTUNREACH, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %15, align 4
  br label %150

136:                                              ; preds = %120
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i32 @dev_queue_xmit(%struct.sk_buff* %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp sgt i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @net_xmit_errno(i32 %145)
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %144, %136
  br label %148

148:                                              ; preds = %147, %118
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %7, align 4
  br label %154

150:                                              ; preds = %133, %40, %32
  %151 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %152 = call i32 @kfree_skb(%struct.sk_buff* %151)
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %150, %148
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i64 @pn_addr(i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.phonethdr* @pn_hdr(%struct.sk_buff*) #1

declare dso_local i8* @pn_dev(i32) #1

declare dso_local i32 @__cpu_to_be16(i32) #1

declare dso_local i8* @pn_obj(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i64 @netif_rx(%struct.sk_buff*) #1

declare dso_local i64 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
