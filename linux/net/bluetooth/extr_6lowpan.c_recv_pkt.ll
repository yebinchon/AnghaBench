; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_recv_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_recv_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i8*, i8*, %struct.net_device* }
%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lowpan_peer = type { i32 }

@ARPHRD_6LOWPAN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i8* null, align 8
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"iphc_decompress failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown packet type\00", align 1
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.lowpan_peer*)* @recv_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pkt(%struct.sk_buff* %0, %struct.net_device* %1, %struct.lowpan_peer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lowpan_peer*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.lowpan_peer* %2, %struct.lowpan_peer** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call i32 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %165

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_6LOWPAN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %14
  br label %165

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @skb_reset_network_header(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %165

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32* @skb_network_header(%struct.sk_buff* %36)
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @lowpan_is_ipv6(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_pull(%struct.sk_buff* %42, i32 1)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i64, i64* @NET_SKB_PAD, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @skb_tailroom(%struct.sk_buff* %47)
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %44, i64 %46, i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %165

54:                                               ; preds = %41
  %55 = load i32, i32* @ETH_P_IPV6, align 4
  %56 = call i8* @htons(i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @PACKET_HOST, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 3
  store %struct.net_device* %62, %struct.net_device** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @skb_set_transport_header(%struct.sk_buff* %65, i32 4)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i64 @give_skb_to_upper(%struct.sk_buff* %67, %struct.net_device* %68)
  %70 = load i64, i64* @NET_RX_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  br label %165

75:                                               ; preds = %54
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %78
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = call i32 @consume_skb(%struct.sk_buff* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %94 = call i32 @consume_skb(%struct.sk_buff* %93)
  br label %162

95:                                               ; preds = %35
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32* @skb_network_header(%struct.sk_buff* %96)
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @lowpan_is_iphc(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %159

101:                                              ; preds = %95
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = load i32, i32* @GFP_ATOMIC, align 4
  %104 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %102, i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %8, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %165

108:                                              ; preds = %101
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 3
  store %struct.net_device* %109, %struct.net_device** %111, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = load %struct.lowpan_peer*, %struct.lowpan_peer** %7, align 8
  %115 = call i32 @iphc_decompress(%struct.sk_buff* %112, %struct.net_device* %113, %struct.lowpan_peer* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call i32 @kfree_skb(%struct.sk_buff* %121)
  br label %165

123:                                              ; preds = %108
  %124 = load i32, i32* @ETH_P_IPV6, align 4
  %125 = call i8* @htons(i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @PACKET_HOST, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = call i64 @give_skb_to_upper(%struct.sk_buff* %131, %struct.net_device* %132)
  %134 = load i64, i64* @NET_RX_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i32 @kfree_skb(%struct.sk_buff* %137)
  br label %165

139:                                              ; preds = %123
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 8
  %150 = load %struct.net_device*, %struct.net_device** %6, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = call i32 @consume_skb(%struct.sk_buff* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = call i32 @consume_skb(%struct.sk_buff* %157)
  br label %161

159:                                              ; preds = %95
  %160 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %165

161:                                              ; preds = %139
  br label %162

162:                                              ; preds = %161, %75
  %163 = load i64, i64* @NET_RX_SUCCESS, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %4, align 4
  br label %172

165:                                              ; preds = %159, %136, %118, %107, %72, %53, %34, %25, %13
  %166 = load %struct.net_device*, %struct.net_device** %6, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %165, %162
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @lowpan_is_ipv6(i32) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i64 @give_skb_to_upper(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @lowpan_is_iphc(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @iphc_decompress(%struct.sk_buff*, %struct.net_device*, %struct.lowpan_peer*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
