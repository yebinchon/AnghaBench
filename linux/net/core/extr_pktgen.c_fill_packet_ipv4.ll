; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_fill_packet_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_fill_packet_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, %struct.net_device*, i8*, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.pktgen_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.udphdr = type { i64, i8*, i8*, i8* }
%struct.iphdr = type { i32, i32, i32, i32, i32, i8*, i64, i8*, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_MPLS_UC = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@F_UDPCSUM = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.pktgen_dev*)* @fill_packet_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fill_packet_ipv4(%struct.net_device* %0, %struct.pktgen_dev* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pktgen_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.pktgen_dev* %1, %struct.pktgen_dev** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %20 = load i32, i32* @ETH_P_IP, align 4
  %21 = call i8* @htons(i32 %20)
  store i8* %21, i8** %12, align 8
  store i8** null, i8*** %14, align 8
  store i8** null, i8*** %15, align 8
  store i8** null, i8*** %16, align 8
  store i8** null, i8*** %17, align 8
  %22 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ETH_P_MPLS_UC, align 4
  %28 = call i8* @htons(i32 %27)
  store i8* %28, i8** %12, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %31 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 65535
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ETH_P_8021Q, align 4
  %36 = call i8* @htons(i32 %35)
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %39 = call i32 @mod_cur_headers(%struct.pktgen_dev* %38)
  %40 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %40, i32 0, i32 19
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %45 = call %struct.sk_buff* @pktgen_alloc_skb(%struct.net_device* %43, %struct.pktgen_dev* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %37
  %49 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %49, i32 0, i32 18
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sprintf(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %326

53:                                               ; preds = %37
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @prefetchw(i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @skb_reserve(%struct.sk_buff* %58, i32 16)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32* @skb_push(%struct.sk_buff* %60, i32 14)
  store i32* %61, i32** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %64 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i8* @skb_put(%struct.sk_buff* %62, i32 %68)
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %13, align 8
  %71 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %72 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %53
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %78 = call i32 @mpls_push(i32* %76, %struct.pktgen_dev* %77)
  br label %79

79:                                               ; preds = %75, %53
  %80 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %81 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 65535
  br i1 %83, label %84, label %131

84:                                               ; preds = %79
  %85 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %86 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 65535
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = call i8* @skb_put(%struct.sk_buff* %90, i32 8)
  %92 = bitcast i8* %91 to i8**
  store i8** %92, i8*** %16, align 8
  %93 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %94 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %97 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %96, i32 0, i32 17
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %100 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %99, i32 0, i32 16
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @build_tci(i32 %95, i32 %98, i32 %101)
  %103 = load i8**, i8*** %16, align 8
  store i8* %102, i8** %103, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i8* @skb_put(%struct.sk_buff* %104, i32 8)
  %106 = bitcast i8* %105 to i8**
  store i8** %106, i8*** %17, align 8
  %107 = load i32, i32* @ETH_P_8021Q, align 4
  %108 = call i8* @htons(i32 %107)
  %109 = load i8**, i8*** %17, align 8
  store i8* %108, i8** %109, align 8
  br label %110

110:                                              ; preds = %89, %84
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = call i8* @skb_put(%struct.sk_buff* %111, i32 8)
  %113 = bitcast i8* %112 to i8**
  store i8** %113, i8*** %14, align 8
  %114 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %115 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %118 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %121 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @build_tci(i32 %116, i32 %119, i32 %122)
  %124 = load i8**, i8*** %14, align 8
  store i8* %123, i8** %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call i8* @skb_put(%struct.sk_buff* %125, i32 8)
  %127 = bitcast i8* %126 to i8**
  store i8** %127, i8*** %15, align 8
  %128 = load i32, i32* @ETH_P_IP, align 4
  %129 = call i8* @htons(i32 %128)
  %130 = load i8**, i8*** %15, align 8
  store i8* %129, i8** %130, align 8
  br label %131

131:                                              ; preds = %110, %79
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i32 @skb_reset_mac_header(%struct.sk_buff* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @skb_set_network_header(%struct.sk_buff* %134, i32 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = call i8* @skb_put(%struct.sk_buff* %139, i32 56)
  %141 = bitcast i8* %140 to %struct.iphdr*
  store %struct.iphdr* %141, %struct.iphdr** %11, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @skb_set_transport_header(%struct.sk_buff* %142, i32 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = call i8* @skb_put(%struct.sk_buff* %147, i32 32)
  %149 = bitcast i8* %148 to %struct.udphdr*
  store %struct.udphdr* %149, %struct.udphdr** %8, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %150, i32 %151)
  %153 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %154 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %160 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memcpy(i32* %158, i32 %161, i32 12)
  %163 = load i8*, i8** %12, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 12
  %166 = bitcast i32* %165 to i8**
  store i8* %163, i8** %166, align 8
  %167 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %168 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 14
  %171 = sub nsw i32 %170, 20
  %172 = sub nsw i32 %171, 8
  %173 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %174 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %131
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ult i64 %181, 4
  br i1 %182, label %183, label %184

183:                                              ; preds = %179, %131
  store i32 4, i32* %9, align 4
  br label %184

184:                                              ; preds = %183, %179
  %185 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %186 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @htons(i32 %187)
  %189 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %190 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %192 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @htons(i32 %193)
  %195 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %196 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 8
  %199 = call i8* @htons(i32 %198)
  %200 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %201 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %200, i32 0, i32 1
  store i8* %199, i8** %201, align 8
  %202 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %203 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  %204 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 0
  store i32 5, i32* %205, align 8
  %206 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 1
  store i32 4, i32* %207, align 4
  %208 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %209 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %208, i32 0, i32 2
  store i32 32, i32* %209, align 8
  %210 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %211 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %210, i32 0, i32 11
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %214 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %213, i32 0, i32 9
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @IPPROTO_UDP, align 4
  %216 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 8
  %218 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %219 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %222 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %224 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %229 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @htons(i32 %230)
  %232 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %233 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  %234 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %235 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  %238 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %239 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %238, i32 0, i32 6
  store i64 0, i64* %239, align 8
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 28, %240
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %10, align 4
  %243 = call i8* @htons(i32 %242)
  %244 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %245 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %247 = call i32 @ip_send_check(%struct.iphdr* %246)
  %248 = load i8*, i8** %12, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 4
  store i8* %248, i8** %250, align 8
  %251 = load %struct.net_device*, %struct.net_device** %4, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %253 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %252, i32 0, i32 3
  store %struct.net_device* %251, %struct.net_device** %253, align 8
  %254 = load i32, i32* @PACKET_HOST, align 4
  %255 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %256 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 4
  %257 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %258 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @pktgen_finalize_skb(%struct.pktgen_dev* %257, %struct.sk_buff* %258, i32 %259)
  %261 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %262 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @F_UDPCSUM, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %271, label %267

267:                                              ; preds = %184
  %268 = load i32, i32* @CHECKSUM_NONE, align 4
  %269 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %270 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  br label %324

271:                                              ; preds = %184
  %272 = load %struct.net_device*, %struct.net_device** %4, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %276 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %277 = or i32 %275, %276
  %278 = and i32 %274, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %271
  %281 = load i32, i32* @CHECKSUM_PARTIAL, align 4
  %282 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %285 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %284, i32 0, i32 0
  store i64 0, i64* %285, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %287 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %288 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %291 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @udp4_hwcsum(%struct.sk_buff* %286, i32 %289, i32 %292)
  br label %323

294:                                              ; preds = %271
  %295 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %296 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %297 = call i32 @skb_transport_offset(%struct.sk_buff* %296)
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 8
  %300 = call i32 @skb_checksum(%struct.sk_buff* %295, i32 %297, i32 %299, i32 0)
  store i32 %300, i32* %19, align 4
  %301 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %302 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %305 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 8
  %309 = load i32, i32* @IPPROTO_UDP, align 4
  %310 = load i32, i32* %19, align 4
  %311 = call i64 @csum_tcpudp_magic(i32 %303, i32 %306, i32 %308, i32 %309, i32 %310)
  %312 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %313 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %312, i32 0, i32 0
  store i64 %311, i64* %313, align 8
  %314 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %315 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %294
  %319 = load i64, i64* @CSUM_MANGLED_0, align 8
  %320 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %321 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  br label %322

322:                                              ; preds = %318, %294
  br label %323

323:                                              ; preds = %322, %280
  br label %324

324:                                              ; preds = %323, %267
  %325 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %325, %struct.sk_buff** %3, align 8
  br label %326

326:                                              ; preds = %324, %48
  %327 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %327
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mod_cur_headers(%struct.pktgen_dev*) #1

declare dso_local %struct.sk_buff* @pktgen_alloc_skb(%struct.net_device*, %struct.pktgen_dev*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mpls_push(i32*, %struct.pktgen_dev*) #1

declare dso_local i8* @build_tci(i32, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @pktgen_finalize_skb(%struct.pktgen_dev*, %struct.sk_buff*, i32) #1

declare dso_local i32 @udp4_hwcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @csum_tcpudp_magic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
