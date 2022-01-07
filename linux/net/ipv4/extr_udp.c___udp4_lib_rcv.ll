; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp4_lib_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp4_lib_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16, i32 }
%struct.udp_table = type { i32 }
%struct.sock = type { %struct.dst_entry* }
%struct.dst_entry = type { i32 }
%struct.udphdr = type { i32, i32, i32 }
%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@UDP_MIB_NOPORTS = common dso_local global i32 0, align 4
@IPPROTO_UDPLITE = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"UDP%s: short packet: From %pI4:%u %d/%d to %pI4:%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Lite\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"UDP%s: bad checksum. From %pI4:%u to %pI4:%u ulen %d\0A\00", align 1
@UDP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udp4_lib_rcv(%struct.sk_buff* %0, %struct.udp_table* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.udp_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.dst_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.udp_table* %1, %struct.udp_table** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %17)
  store %struct.rtable* %18, %struct.rtable** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @dev_net(i32 %21)
  store %struct.net* %22, %struct.net** %14, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @pskb_may_pull(%struct.sk_buff* %23, i32 12)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %209

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %28)
  store %struct.udphdr* %29, %struct.udphdr** %9, align 8
  %30 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %31 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call zeroext i16 @ntohs(i32 %32)
  store i16 %33, i16* %10, align 2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i16, i16* %10, align 2
  %43 = zext i16 %42 to i32
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp sgt i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  br label %164

50:                                               ; preds = %27
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @IPPROTO_UDP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i64
  %57 = icmp ult i64 %56, 12
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i16, i16* %10, align 2
  %61 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %59, i16 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %54
  br label %164

64:                                               ; preds = %58
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %65)
  store %struct.udphdr* %66, %struct.udphdr** %9, align 8
  br label %67

67:                                               ; preds = %64, %50
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @udp4_csum_init(%struct.sk_buff* %68, %struct.udphdr* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %185

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call %struct.sock* @skb_steal_sock(%struct.sk_buff* %75)
  store %struct.sock* %76, %struct.sock** %8, align 8
  %77 = load %struct.sock*, %struct.sock** %8, align 8
  %78 = icmp ne %struct.sock* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %80)
  store %struct.dst_entry* %81, %struct.dst_entry** %15, align 8
  %82 = load %struct.sock*, %struct.sock** %8, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load %struct.dst_entry*, %struct.dst_entry** %83, align 8
  %85 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %86 = icmp ne %struct.dst_entry* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.sock*, %struct.sock** %8, align 8
  %92 = load %struct.dst_entry*, %struct.dst_entry** %15, align 8
  %93 = call i32 @udp_sk_rx_dst_set(%struct.sock* %91, %struct.dst_entry* %92)
  br label %94

94:                                               ; preds = %90, %79
  %95 = load %struct.sock*, %struct.sock** %8, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %98 = call i32 @udp_unicast_rcv_skb(%struct.sock* %95, %struct.sk_buff* %96, %struct.udphdr* %97)
  store i32 %98, i32* %16, align 4
  %99 = load %struct.sock*, %struct.sock** %8, align 8
  %100 = call i32 @sock_put(%struct.sock* %99)
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %4, align 4
  br label %219

102:                                              ; preds = %74
  %103 = load %struct.rtable*, %struct.rtable** %11, align 8
  %104 = getelementptr inbounds %struct.rtable, %struct.rtable* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RTCF_BROADCAST, align 4
  %107 = load i32, i32* @RTCF_MULTICAST, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load %struct.net*, %struct.net** %14, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.udp_table*, %struct.udp_table** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @__udp4_lib_mcast_deliver(%struct.net* %112, %struct.sk_buff* %113, %struct.udphdr* %114, i32 %115, i32 %116, %struct.udp_table* %117, i32 %118)
  store i32 %119, i32* %4, align 4
  br label %219

120:                                              ; preds = %102
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %123 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %126 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.udp_table*, %struct.udp_table** %6, align 8
  %129 = call %struct.sock* @__udp4_lib_lookup_skb(%struct.sk_buff* %121, i32 %124, i32 %127, %struct.udp_table* %128)
  store %struct.sock* %129, %struct.sock** %8, align 8
  %130 = load %struct.sock*, %struct.sock** %8, align 8
  %131 = icmp ne %struct.sock* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load %struct.sock*, %struct.sock** %8, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %136 = call i32 @udp_unicast_rcv_skb(%struct.sock* %133, %struct.sk_buff* %134, %struct.udphdr* %135)
  store i32 %136, i32* %4, align 4
  br label %219

137:                                              ; preds = %120
  %138 = load i32, i32* @XFRM_POLICY_IN, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = call i32 @xfrm4_policy_check(i32* null, i32 %138, %struct.sk_buff* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %209

143:                                              ; preds = %137
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = call i32 @nf_reset_ct(%struct.sk_buff* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i64 @udp_lib_checksum_complete(%struct.sk_buff* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %185

150:                                              ; preds = %143
  %151 = load %struct.net*, %struct.net** %14, align 8
  %152 = load i32, i32* @UDP_MIB_NOPORTS, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @__UDP_INC_STATS(%struct.net* %151, i32 %152, i32 %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %160 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %161 = call i32 @icmp_send(%struct.sk_buff* %158, i32 %159, i32 %160, i32 0)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = call i32 @kfree_skb(%struct.sk_buff* %162)
  store i32 0, i32* %4, align 4
  br label %219

164:                                              ; preds = %63, %49
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %170 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %171 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call zeroext i16 @ntohs(i32 %172)
  %174 = load i16, i16* %10, align 2
  %175 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  %177 = load i16, i16* %176, align 4
  %178 = ptrtoint i32* %13 to i16
  %179 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %180 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call zeroext i16 @ntohs(i32 %181)
  %183 = zext i16 %182 to i32
  %184 = call i32 (i8*, i8*, i32*, i16, i16, i16, i16, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %169, i32* %12, i16 zeroext %173, i16 zeroext %174, i16 zeroext %177, i16 zeroext %178, i32 %183)
  br label %209

185:                                              ; preds = %149, %73
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %191 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %192 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call zeroext i16 @ntohs(i32 %193)
  %195 = ptrtoint i32* %13 to i16
  %196 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %197 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call zeroext i16 @ntohs(i32 %198)
  %200 = load i16, i16* %10, align 2
  %201 = call i32 (i8*, i8*, i32*, i16, i16, i16, i16, ...) @net_dbg_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %190, i32* %12, i16 zeroext %194, i16 zeroext %195, i16 zeroext %199, i16 zeroext %200)
  %202 = load %struct.net*, %struct.net** %14, align 8
  %203 = load i32, i32* @UDP_MIB_CSUMERRORS, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @__UDP_INC_STATS(%struct.net* %202, i32 %203, i32 %207)
  br label %209

209:                                              ; preds = %185, %164, %142, %26
  %210 = load %struct.net*, %struct.net** %14, align 8
  %211 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @IPPROTO_UDPLITE, align 4
  %214 = icmp eq i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @__UDP_INC_STATS(%struct.net* %210, i32 %211, i32 %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %218 = call i32 @kfree_skb(%struct.sk_buff* %217)
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %209, %150, %132, %111, %94
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i16 zeroext) #1

declare dso_local i64 @udp4_csum_init(%struct.sk_buff*, %struct.udphdr*, i32) #1

declare dso_local %struct.sock* @skb_steal_sock(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udp_sk_rx_dst_set(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i32 @udp_unicast_rcv_skb(%struct.sock*, %struct.sk_buff*, %struct.udphdr*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @__udp4_lib_mcast_deliver(%struct.net*, %struct.sk_buff*, %struct.udphdr*, i32, i32, %struct.udp_table*, i32) #1

declare dso_local %struct.sock* @__udp4_lib_lookup_skb(%struct.sk_buff*, i32, i32, %struct.udp_table*) #1

declare dso_local i32 @xfrm4_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i64 @udp_lib_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @__UDP_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i8*, i32*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
