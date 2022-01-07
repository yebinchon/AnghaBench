; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_send_udp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_send_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, %struct.TYPE_6__* }
%struct.udphdr = type { i32, i32, i32, i64 }
%struct.iphdr = type { i8, i32, i32, i8, i8, i32, i64, i8*, i64, i64 }
%struct.ethhdr = type { i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32, i32, i32, i8*, i64* }

@netpoll_send_udp.ip_ident = internal global i32 0, align 4
@IPPROTO_UDP = common dso_local global i8* null, align 8
@CSUM_MANGLED_0 = common dso_local global i8* null, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_send_udp(%struct.netpoll* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.netpoll*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.udphdr*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.ethhdr*, align 8
  %14 = alloca %struct.ipv6hdr*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = call i32 (...) @irqs_disabled()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 24
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %25 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 32
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 56
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %41 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_6__* %42)
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %49 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call %struct.sk_buff* @find_skb(%struct.netpoll* %45, i64 %53, i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %38
  br label %294

61:                                               ; preds = %38
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %62, i8* %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @skb_put(%struct.sk_buff* %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %69, i32 24)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = call i32 @skb_reset_transport_header(%struct.sk_buff* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %73)
  store %struct.udphdr* %74, %struct.udphdr** %11, align 8
  %75 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %76 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @htons(i32 %77)
  %79 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %80 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %82 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @htons(i32 %83)
  %85 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %86 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @htons(i32 %87)
  %89 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %90 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %92 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %178

95:                                               ; preds = %61
  %96 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %97 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %99 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %102 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %9, align 4
  %105 = load i8*, i8** @IPPROTO_UDP, align 8
  %106 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @csum_partial(%struct.udphdr* %106, i32 %107, i32 0)
  %109 = call i64 @csum_ipv6_magic(i32* %100, i32* %103, i32 %104, i8* %105, i32 %108)
  %110 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %111 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %113 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %95
  %117 = load i8*, i8** @CSUM_MANGLED_0, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %120 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %95
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %122, i32 32)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %125 = call i32 @skb_reset_network_header(%struct.sk_buff* %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %126)
  store %struct.ipv6hdr* %127, %struct.ipv6hdr** %14, align 8
  %128 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %129 = bitcast %struct.ipv6hdr* %128 to i8*
  %130 = call i32 @put_unaligned(i32 96, i8* %129)
  %131 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %132 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %131, i32 0, i32 5
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %136 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %135, i32 0, i32 5
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %140 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %139, i32 0, i32 5
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 2
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 24, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @htons(i32 %146)
  %148 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %149 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** @IPPROTO_UDP, align 8
  %151 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %152 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %154 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %153, i32 0, i32 1
  store i32 32, i32* %154, align 4
  %155 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %156 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %160 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %162 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %166 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = load i32, i32* @ETH_HLEN, align 4
  %169 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %167, i32 %168)
  store %struct.ethhdr* %169, %struct.ethhdr** %13, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %171 = call i32 @skb_reset_mac_header(%struct.sk_buff* %170)
  %172 = load i32, i32* @ETH_P_IPV6, align 4
  %173 = call i32 @htons(i32 %172)
  %174 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %175 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 8
  br label %269

178:                                              ; preds = %61
  %179 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %180 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %179, i32 0, i32 3
  store i64 0, i64* %180, align 8
  %181 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %182 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %186 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i8*, i8** @IPPROTO_UDP, align 8
  %191 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @csum_partial(%struct.udphdr* %191, i32 %192, i32 0)
  %194 = call i64 @csum_tcpudp_magic(i32 %184, i32 %188, i32 %189, i8* %190, i32 %193)
  %195 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %196 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %195, i32 0, i32 3
  store i64 %194, i64* %196, align 8
  %197 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %198 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %178
  %202 = load i8*, i8** @CSUM_MANGLED_0, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %205 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %204, i32 0, i32 3
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %201, %178
  %207 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %208 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %207, i32 56)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = call i32 @skb_reset_network_header(%struct.sk_buff* %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %212 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %211)
  store %struct.iphdr* %212, %struct.iphdr** %12, align 8
  %213 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %214 = bitcast %struct.iphdr* %213 to i8*
  %215 = call i32 @put_unaligned(i32 69, i8* %214)
  %216 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 9
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @htons(i32 %218)
  %220 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 0
  %222 = call i32 @put_unaligned(i32 %219, i8* %221)
  %223 = call i32 @atomic_inc_return(i32* @netpoll_send_udp.ip_ident)
  %224 = call i32 @htons(i32 %223)
  %225 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %228 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %227, i32 0, i32 8
  store i64 0, i64* %228, align 8
  %229 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %230 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %229, i32 0, i32 2
  store i32 64, i32* %230, align 8
  %231 = load i8*, i8** @IPPROTO_UDP, align 8
  %232 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %233 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  %234 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 6
  store i64 0, i64* %235, align 8
  %236 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %237 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %241 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %240, i32 0, i32 3
  %242 = call i32 @put_unaligned(i32 %239, i8* %241)
  %243 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %244 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %248 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %247, i32 0, i32 4
  %249 = call i32 @put_unaligned(i32 %246, i8* %248)
  %250 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %251 = bitcast %struct.iphdr* %250 to i8*
  %252 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %253 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = call i64 @ip_fast_csum(i8* %251, i32 %254)
  %256 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %257 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %256, i32 0, i32 6
  store i64 %255, i64* %257, align 8
  %258 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %259 = load i32, i32* @ETH_HLEN, align 4
  %260 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %258, i32 %259)
  store %struct.ethhdr* %260, %struct.ethhdr** %13, align 8
  %261 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %262 = call i32 @skb_reset_mac_header(%struct.sk_buff* %261)
  %263 = load i32, i32* @ETH_P_IP, align 4
  %264 = call i32 @htons(i32 %263)
  %265 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %266 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 4
  %267 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %268 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 8
  br label %269

269:                                              ; preds = %206, %121
  %270 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %271 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %274 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %273, i32 0, i32 2
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @ether_addr_copy(i32 %272, i32 %277)
  %279 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %280 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %283 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @ether_addr_copy(i32 %281, i32 %284)
  %286 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %287 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %286, i32 0, i32 2
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %290 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %289, i32 0, i32 1
  store %struct.TYPE_6__* %288, %struct.TYPE_6__** %290, align 8
  %291 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %293 = call i32 @netpoll_send_skb(%struct.netpoll* %291, %struct.sk_buff* %292)
  br label %294

294:                                              ; preds = %269, %60
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_6__*) #1

declare dso_local %struct.sk_buff* @find_skb(%struct.netpoll*, i64, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @csum_partial(%struct.udphdr*, i32, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @put_unaligned(i32, i8*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @netpoll_send_skb(%struct.netpoll*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
