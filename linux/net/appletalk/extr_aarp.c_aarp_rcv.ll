; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.packet_type = type { i32 }
%struct.net_device = type { i64 }
%struct.elapaarp = type { i64, i64, i32, i64, i64, i64, i32, i64, i64, i32 }
%struct.aarp_entry = type { i32, i32, i32, %struct.net_device* }
%struct.atalk_addr = type { i32, i64 }
%struct.atalk_iface = type { i32, %struct.atalk_addr }

@init_net = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@AARP_PA_ALEN = common dso_local global i64 0, align 8
@AARP_HASH_SIZE = common dso_local global i32 0, align 4
@ATIF_PROBE = common dso_local global i32 0, align 4
@ATIF_PROBE_FAIL = common dso_local global i32 0, align 4
@aarp_lock = common dso_local global i32 0, align 4
@proxies = common dso_local global i32* null, align 8
@unresolved_count = common dso_local global i32 0, align 4
@unresolved = common dso_local global i32* null, align 8
@aarp_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sysctl_aarp_expiry_time = common dso_local global i64 0, align 8
@resolved = common dso_local global i32* null, align 8
@sysctl_aarp_tick_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @aarp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aarp_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.elapaarp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aarp_entry*, align 8
  %14 = alloca %struct.atalk_addr, align 8
  %15 = alloca %struct.atalk_addr*, align 8
  %16 = alloca %struct.atalk_addr, align 8
  %17 = alloca %struct.atalk_iface*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.elapaarp* @aarp_hdr(%struct.sk_buff* %18)
  store %struct.elapaarp* %19, %struct.elapaarp** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @dev_net(%struct.net_device* %20)
  %22 = call i32 @net_eq(i32 %21, i32* @init_net)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %299

25:                                               ; preds = %4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ARPHRD_ETHER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %299

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_pull(%struct.sk_buff* %33, i32 80)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %299

37:                                               ; preds = %32
  %38 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %39 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ntohs(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 128
  br i1 %43, label %69, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 130
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  %48 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %49 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETH_ALEN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %47
  %54 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %55 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AARP_PA_ALEN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %61 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %66 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59, %53, %47, %44, %37
  br label %299

70:                                               ; preds = %64
  %71 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %72 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @AARP_HASH_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = srem i32 %73, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %78 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %82 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call %struct.atalk_iface* @atalk_find_dev(%struct.net_device* %85)
  store %struct.atalk_iface* %86, %struct.atalk_iface** %17, align 8
  %87 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %88 = icmp ne %struct.atalk_iface* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %70
  br label %298

90:                                               ; preds = %70
  %91 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %92 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ATIF_PROBE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %99 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %104 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %97
  %108 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %109 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %113 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %118 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %119 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %298

122:                                              ; preds = %107, %97, %90
  %123 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %124 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %129 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  %132 = call i32 @write_lock_bh(i32* @aarp_lock)
  %133 = load i32*, i32** @proxies, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = call %struct.aarp_entry* @__aarp_find_entry(i32 %137, %struct.net_device* %138, %struct.atalk_addr* %16)
  store %struct.aarp_entry* %139, %struct.aarp_entry** %13, align 8
  %140 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %141 = icmp ne %struct.aarp_entry* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %122
  %143 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %144 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ATIF_PROBE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %151 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %152 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %296

155:                                              ; preds = %142, %122
  %156 = load i32, i32* %12, align 4
  switch i32 %156, label %295 [
    i32 129, label %157
    i32 128, label %201
    i32 130, label %201
  ]

157:                                              ; preds = %155
  %158 = load i32, i32* @unresolved_count, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  br label %295

161:                                              ; preds = %157
  %162 = load i32*, i32** @unresolved, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = call %struct.aarp_entry* @__aarp_find_entry(i32 %166, %struct.net_device* %167, %struct.atalk_addr* %14)
  store %struct.aarp_entry* %168, %struct.aarp_entry** %13, align 8
  %169 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %170 = icmp ne %struct.aarp_entry* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %161
  %172 = load %struct.net_device*, %struct.net_device** %6, align 8
  %173 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %174 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %173, i32 0, i32 3
  %175 = load %struct.net_device*, %struct.net_device** %174, align 8
  %176 = icmp ne %struct.net_device* %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171, %161
  br label %295

178:                                              ; preds = %171
  %179 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %180 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %183 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ether_addr_copy(i32 %181, i32 %184)
  %186 = load i32*, i32** @unresolved, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @__aarp_resolved(i32* %189, %struct.aarp_entry* %190, i32 %191)
  %193 = load i32, i32* @unresolved_count, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %178
  %196 = load i64, i64* @jiffies, align 8
  %197 = load i64, i64* @sysctl_aarp_expiry_time, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @mod_timer(i32* @aarp_timer, i64 %198)
  br label %200

200:                                              ; preds = %195, %178
  br label %295

201:                                              ; preds = %155, %155
  %202 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %203 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  store i32 %205, i32* %206, align 8
  %207 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %208 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  store i64 %209, i64* %210, align 8
  %211 = load %struct.net_device*, %struct.net_device** %6, align 8
  %212 = call %struct.atalk_addr* @__aarp_proxy_find(%struct.net_device* %211, %struct.atalk_addr* %14)
  store %struct.atalk_addr* %212, %struct.atalk_addr** %15, align 8
  %213 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %214 = icmp ne %struct.atalk_addr* %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %201
  %216 = load %struct.atalk_iface*, %struct.atalk_iface** %17, align 8
  %217 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %216, i32 0, i32 1
  store %struct.atalk_addr* %217, %struct.atalk_addr** %15, align 8
  br label %225

218:                                              ; preds = %201
  %219 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 0
  store i32 %220, i32* %221, align 8
  %222 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %16, i32 0, i32 1
  store i64 %223, i64* %224, align 8
  store %struct.atalk_addr* %16, %struct.atalk_addr** %15, align 8
  br label %225

225:                                              ; preds = %218, %215
  %226 = load i32, i32* %12, align 4
  %227 = icmp eq i32 %226, 130
  br i1 %227, label %228, label %255

228:                                              ; preds = %225
  %229 = load i32*, i32** @resolved, align 8
  %230 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @AARP_HASH_SIZE, align 4
  %233 = sub nsw i32 %232, 1
  %234 = srem i32 %231, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %229, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 0
  %240 = load %struct.net_device*, %struct.net_device** %239, align 8
  %241 = call %struct.aarp_entry* @__aarp_find_entry(i32 %237, %struct.net_device* %240, %struct.atalk_addr* %14)
  store %struct.aarp_entry* %241, %struct.aarp_entry** %13, align 8
  %242 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %243 = icmp ne %struct.aarp_entry* %242, null
  br i1 %243, label %244, label %254

244:                                              ; preds = %228
  %245 = load i64, i64* @jiffies, align 8
  %246 = sub nsw i64 %245, 1
  %247 = trunc i64 %246 to i32
  %248 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %249 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load i64, i64* @jiffies, align 8
  %251 = load i64, i64* @sysctl_aarp_tick_time, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @mod_timer(i32* @aarp_timer, i64 %252)
  br label %254

254:                                              ; preds = %244, %228
  br label %255

255:                                              ; preds = %254, %225
  %256 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %259 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %257, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %295

263:                                              ; preds = %255
  %264 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %263
  %268 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %269 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %276 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %274, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  br label %295

280:                                              ; preds = %272, %267, %263
  %281 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %282 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 0
  store i32 %283, i32* %284, align 8
  %285 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %286 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %14, i32 0, i32 1
  store i64 %287, i64* %288, align 8
  %289 = load %struct.net_device*, %struct.net_device** %6, align 8
  %290 = load %struct.atalk_addr*, %struct.atalk_addr** %15, align 8
  %291 = load %struct.elapaarp*, %struct.elapaarp** %9, align 8
  %292 = getelementptr inbounds %struct.elapaarp, %struct.elapaarp* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @aarp_send_reply(%struct.net_device* %289, %struct.atalk_addr* %290, %struct.atalk_addr* %14, i32 %293)
  br label %295

295:                                              ; preds = %155, %280, %279, %262, %200, %177, %160
  br label %296

296:                                              ; preds = %295, %149
  %297 = call i32 @write_unlock_bh(i32* @aarp_lock)
  br label %298

298:                                              ; preds = %296, %116, %89
  store i32 1, i32* %11, align 4
  br label %299

299:                                              ; preds = %298, %69, %36, %31, %24
  %300 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %301 = call i32 @kfree_skb(%struct.sk_buff* %300)
  %302 = load i32, i32* %11, align 4
  ret i32 %302
}

declare dso_local %struct.elapaarp* @aarp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.atalk_iface* @atalk_find_dev(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.aarp_entry* @__aarp_find_entry(i32, %struct.net_device*, %struct.atalk_addr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @__aarp_resolved(i32*, %struct.aarp_entry*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.atalk_addr* @__aarp_proxy_find(%struct.net_device*, %struct.atalk_addr*) #1

declare dso_local i32 @aarp_send_reply(%struct.net_device*, %struct.atalk_addr*, %struct.atalk_addr*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
