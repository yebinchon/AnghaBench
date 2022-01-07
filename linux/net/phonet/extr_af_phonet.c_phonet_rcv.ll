; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_phonet_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_phonet_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, %struct.net_device* }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.net = type { i32 }
%struct.phonethdr = type { i32 }
%struct.sockaddr_pn = type { i32 }
%struct.sock = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@PNADDR_BROADCAST = common dso_local global i64 0, align 8
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"No Phonet route to %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Phonet loop to %02X on %s\0A\00", align 1
@ETH_P_PHONET = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @phonet_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phonet_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.phonethdr*, align 8
  %12 = alloca %struct.sockaddr_pn, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.sock*, align 8
  %16 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.net* @dev_net(%struct.net_device* %17)
  store %struct.net* %18, %struct.net** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %25, i32* %5, align 4
  br label %172

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @pskb_pull(%struct.sk_buff* %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %168

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call %struct.phonethdr* @pn_hdr(%struct.sk_buff* %32)
  store %struct.phonethdr* %33, %struct.phonethdr** %11, align 8
  %34 = load %struct.phonethdr*, %struct.phonethdr** %11, align 8
  %35 = getelementptr inbounds %struct.phonethdr, %struct.phonethdr* %34, i32 0, i32 0
  %36 = call i32 @get_unaligned_be16(i32* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %168

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @pskb_trim(%struct.sk_buff* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %40
  br label %168

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @skb_reset_transport_header(%struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff* %57, %struct.sockaddr_pn* %12)
  %59 = call i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %12)
  %60 = load i64, i64* @PNADDR_BROADCAST, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.net*, %struct.net** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 @pn_deliver_sock_broadcast(%struct.net* %63, %struct.sk_buff* %64)
  br label %168

66:                                               ; preds = %54
  %67 = call i64 @pn_sockaddr_get_object(%struct.sockaddr_pn* %12)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.net*, %struct.net** %10, align 8
  %71 = getelementptr inbounds %struct.sockaddr_pn, %struct.sockaddr_pn* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.sock* @pn_find_sock_by_res(%struct.net* %70, i32 %72)
  store %struct.sock* %73, %struct.sock** %14, align 8
  %74 = load %struct.sock*, %struct.sock** %14, align 8
  %75 = icmp ne %struct.sock* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.sock*, %struct.sock** %14, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call i32 @sk_receive_skb(%struct.sock* %77, %struct.sk_buff* %78, i32 0)
  store i32 %79, i32* %5, align 4
  br label %172

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %66
  %82 = load %struct.net*, %struct.net** %10, align 8
  %83 = call i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %12)
  %84 = call i64 @phonet_address_lookup(%struct.net* %82, i64 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.net*, %struct.net** %10, align 8
  %88 = call %struct.sock* @pn_find_sock_by_sa(%struct.net* %87, %struct.sockaddr_pn* %12)
  store %struct.sock* %88, %struct.sock** %15, align 8
  %89 = load %struct.sock*, %struct.sock** %15, align 8
  %90 = icmp ne %struct.sock* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.sock*, %struct.sock** %15, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = call i32 @sk_receive_skb(%struct.sock* %92, %struct.sk_buff* %93, i32 0)
  store i32 %94, i32* %5, align 4
  br label %172

95:                                               ; preds = %86
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i64 @can_respond(%struct.sk_buff* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = call i32 @send_obj_unreachable(%struct.sk_buff* %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = call i32 @send_reset_indications(%struct.sk_buff* %102)
  br label %104

104:                                              ; preds = %99, %95
  br label %167

105:                                              ; preds = %81
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PACKET_LOOPBACK, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %168

115:                                              ; preds = %105
  %116 = load %struct.net*, %struct.net** %10, align 8
  %117 = call i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %12)
  %118 = call %struct.net_device* @phonet_route_output(%struct.net* %116, i64 %117)
  store %struct.net_device* %118, %struct.net_device** %16, align 8
  %119 = load %struct.net_device*, %struct.net_device** %16, align 8
  %120 = icmp ne %struct.net_device* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = call i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %12)
  %123 = call i32 (i8*, i64, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %122)
  br label %168

124:                                              ; preds = %115
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call i32 @__skb_push(%struct.sk_buff* %125, i32 4)
  %127 = load %struct.net_device*, %struct.net_device** %16, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 2
  store %struct.net_device* %127, %struct.net_device** %129, align 8
  %130 = load %struct.net_device*, %struct.net_device** %16, align 8
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = icmp eq %struct.net_device* %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = call i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn* %12)
  %135 = load %struct.net_device*, %struct.net_device** %7, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i64, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %134, i32 %137)
  br label %163

139:                                              ; preds = %124
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = load %struct.net_device*, %struct.net_device** %16, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @skb_cow_head(%struct.sk_buff* %140, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %163

147:                                              ; preds = %139
  %148 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %149 = load %struct.net_device*, %struct.net_device** %16, align 8
  %150 = load i32, i32* @ETH_P_PHONET, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @dev_hard_header(%struct.sk_buff* %148, %struct.net_device* %149, i32 %150, i32* null, i32* null, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %163

157:                                              ; preds = %147
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = call i32 @dev_queue_xmit(%struct.sk_buff* %158)
  %160 = load %struct.net_device*, %struct.net_device** %16, align 8
  %161 = call i32 @dev_put(%struct.net_device* %160)
  %162 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %162, i32* %5, align 4
  br label %172

163:                                              ; preds = %156, %146, %133
  %164 = load %struct.net_device*, %struct.net_device** %16, align 8
  %165 = call i32 @dev_put(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %104
  br label %168

168:                                              ; preds = %167, %121, %114, %62, %53, %39, %30
  %169 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %170 = call i32 @kfree_skb(%struct.sk_buff* %169)
  %171 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %157, %91, %76, %24
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.phonethdr* @pn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i64 @pn_sockaddr_get_addr(%struct.sockaddr_pn*) #1

declare dso_local i32 @pn_deliver_sock_broadcast(%struct.net*, %struct.sk_buff*) #1

declare dso_local i64 @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local %struct.sock* @pn_find_sock_by_res(%struct.net*, i32) #1

declare dso_local i32 @sk_receive_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @phonet_address_lookup(%struct.net*, i64) #1

declare dso_local %struct.sock* @pn_find_sock_by_sa(%struct.net*, %struct.sockaddr_pn*) #1

declare dso_local i64 @can_respond(%struct.sk_buff*) #1

declare dso_local i32 @send_obj_unreachable(%struct.sk_buff*) #1

declare dso_local i32 @send_reset_indications(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.net_device* @phonet_route_output(%struct.net*, i64) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i64, ...) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32*, i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
