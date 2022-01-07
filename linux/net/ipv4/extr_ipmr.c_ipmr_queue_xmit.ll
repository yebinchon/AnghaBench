; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.mr_table = type { %struct.vif_device* }
%struct.vif_device = type { i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.net_device* }
%struct.flowi4 = type { i32 }
%struct.TYPE_9__ = type { i32 }

@VIFF_REGISTER = common dso_local global i32 0, align 4
@IGMPMSG_WHOLEPKT = common dso_local global i32 0, align 4
@VIFF_TUNNEL = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@IPSKB_FORWARDED = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@ipmr_forward_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.mr_table*, i32, %struct.sk_buff*, i32)* @ipmr_queue_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmr_queue_xmit(%struct.net* %0, %struct.mr_table* %1, i32 %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.mr_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.vif_device*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.flowi4, align 4
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.mr_table* %1, %struct.mr_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %17)
  store %struct.iphdr* %18, %struct.iphdr** %11, align 8
  %19 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %20 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %19, i32 0, i32 0
  %21 = load %struct.vif_device*, %struct.vif_device** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %21, i64 %23
  store %struct.vif_device* %24, %struct.vif_device** %12, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %26 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  br label %254

30:                                               ; preds = %5
  %31 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %32 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VIFF_REGISTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %30
  %38 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %39 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %46 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %55 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %53
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %64 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @IGMPMSG_WHOLEPKT, align 4
  %74 = call i32 @ipmr_cache_report(%struct.mr_table* %70, %struct.sk_buff* %71, i32 %72, i32 %73)
  br label %254

75:                                               ; preds = %30
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load %struct.mr_table*, %struct.mr_table** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @ipmr_forward_offloaded(%struct.sk_buff* %76, %struct.mr_table* %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %254

83:                                               ; preds = %75
  %84 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %85 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @VIFF_TUNNEL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %83
  %91 = load %struct.net*, %struct.net** %6, align 8
  %92 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %93 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %96 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IPPROTO_IPIP, align 4
  %99 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %100 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @RT_TOS(i32 %101)
  %103 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %104 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.rtable* @ip_route_output_ports(%struct.net* %91, %struct.flowi4* %15, i32* null, i32 %94, i32 %97, i32 0, i32 0, i32 %98, i32 %102, i32 %105)
  store %struct.rtable* %106, %struct.rtable** %14, align 8
  %107 = load %struct.rtable*, %struct.rtable** %14, align 8
  %108 = call i64 @IS_ERR(%struct.rtable* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %254

111:                                              ; preds = %90
  store i32 12, i32* %16, align 4
  br label %131

112:                                              ; preds = %83
  %113 = load %struct.net*, %struct.net** %6, align 8
  %114 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %115 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IPPROTO_IPIP, align 4
  %118 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %119 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @RT_TOS(i32 %120)
  %122 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %123 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call %struct.rtable* @ip_route_output_ports(%struct.net* %113, %struct.flowi4* %15, i32* null, i32 %116, i32 0, i32 0, i32 0, i32 %117, i32 %121, i32 %124)
  store %struct.rtable* %125, %struct.rtable** %14, align 8
  %126 = load %struct.rtable*, %struct.rtable** %14, align 8
  %127 = call i64 @IS_ERR(%struct.rtable* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %112
  br label %254

130:                                              ; preds = %112
  br label %131

131:                                              ; preds = %130, %111
  %132 = load %struct.rtable*, %struct.rtable** %14, align 8
  %133 = getelementptr inbounds %struct.rtable, %struct.rtable* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load %struct.net_device*, %struct.net_device** %134, align 8
  store %struct.net_device* %135, %struct.net_device** %13, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load %struct.rtable*, %struct.rtable** %14, align 8
  %143 = getelementptr inbounds %struct.rtable, %struct.rtable* %142, i32 0, i32 0
  %144 = call i64 @dst_mtu(%struct.TYPE_8__* %143)
  %145 = icmp sgt i64 %141, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %131
  %147 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ntohs(i32 %149)
  %151 = load i32, i32* @IP_DF, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load %struct.net*, %struct.net** %6, align 8
  %156 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %157 = call i32 @IP_INC_STATS(%struct.net* %155, i32 %156)
  %158 = load %struct.rtable*, %struct.rtable** %14, align 8
  %159 = call i32 @ip_rt_put(%struct.rtable* %158)
  br label %254

160:                                              ; preds = %146, %131
  %161 = load %struct.net_device*, %struct.net_device** %13, align 8
  %162 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %161)
  %163 = load %struct.rtable*, %struct.rtable** %14, align 8
  %164 = getelementptr inbounds %struct.rtable, %struct.rtable* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %162, %166
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %16, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i64 @skb_cow(%struct.sk_buff* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %160
  %177 = load %struct.rtable*, %struct.rtable** %14, align 8
  %178 = call i32 @ip_rt_put(%struct.rtable* %177)
  br label %254

179:                                              ; preds = %160
  %180 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %181 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %188 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %194 = call i32 @skb_dst_drop(%struct.sk_buff* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = load %struct.rtable*, %struct.rtable** %14, align 8
  %197 = getelementptr inbounds %struct.rtable, %struct.rtable* %196, i32 0, i32 0
  %198 = call i32 @skb_dst_set(%struct.sk_buff* %195, %struct.TYPE_8__* %197)
  %199 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %200 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %199)
  %201 = call i32 @ip_decrease_ttl(%struct.iphdr* %200)
  %202 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %203 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @VIFF_TUNNEL, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %237

208:                                              ; preds = %179
  %209 = load %struct.net*, %struct.net** %6, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %211 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %212 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %215 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @ip_encap(%struct.net* %209, %struct.sk_buff* %210, i32 %213, i32 %216)
  %218 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %219 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %218, i32 0, i32 1
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.vif_device*, %struct.vif_device** %12, align 8
  %229 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %228, i32 0, i32 1
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %227
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %232, align 4
  br label %237

237:                                              ; preds = %208, %179
  %238 = load i32, i32* @IPSKB_FORWARDED, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %240 = call %struct.TYPE_9__* @IPCB(%struct.sk_buff* %239)
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %238
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* @NFPROTO_IPV4, align 4
  %245 = load i32, i32* @NF_INET_FORWARD, align 4
  %246 = load %struct.net*, %struct.net** %6, align 8
  %247 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.net_device*, %struct.net_device** %13, align 8
  %252 = load i32, i32* @ipmr_forward_finish, align 4
  %253 = call i32 @NF_HOOK(i32 %244, i32 %245, %struct.net* %246, i32* null, %struct.sk_buff* %247, i32 %250, %struct.net_device* %251, i32 %252)
  br label %257

254:                                              ; preds = %176, %154, %129, %110, %82, %37, %29
  %255 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %256 = call i32 @kfree_skb(%struct.sk_buff* %255)
  br label %257

257:                                              ; preds = %254, %237
  ret void
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipmr_cache_report(%struct.mr_table*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ipmr_forward_offloaded(%struct.sk_buff*, %struct.mr_table*, i32, i32) #1

declare dso_local %struct.rtable* @ip_route_output_ports(%struct.net*, %struct.flowi4*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i64 @dst_mtu(%struct.TYPE_8__*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @ip_decrease_ttl(%struct.iphdr*) #1

declare dso_local i32 @ip_encap(%struct.net*, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32*, %struct.sk_buff*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
