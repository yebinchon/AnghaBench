; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i64, i32, i8*, i64 }
%struct.flowi6 = type { i32, i32, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.ipv6_txoptions = type { i64, i64 }
%struct.net = type { i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.dst_entry = type { i32 }
%struct.ipv6hdr = type { i32, %struct.in6_addr, i32, i32, i8* }

@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_xmit(%struct.sock* %0, %struct.sk_buff* %1, %struct.flowi6* %2, i32 %3, %struct.ipv6_txoptions* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.flowi6*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_txoptions*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net*, align 8
  %17 = alloca %struct.ipv6_pinfo*, align 8
  %18 = alloca %struct.in6_addr*, align 8
  %19 = alloca %struct.dst_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ipv6hdr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.flowi6* %2, %struct.flowi6** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ipv6_txoptions* %4, %struct.ipv6_txoptions** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = call %struct.net* @sock_net(%struct.sock* %27)
  store %struct.net* %28, %struct.net** %16, align 8
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %29)
  store %struct.ipv6_pinfo* %30, %struct.ipv6_pinfo** %17, align 8
  %31 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %32 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %31, i32 0, i32 3
  store %struct.in6_addr* %32, %struct.in6_addr** %18, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %33)
  store %struct.dst_entry* %34, %struct.dst_entry** %19, align 8
  %35 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %36 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %22, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %41 = load %struct.dst_entry*, %struct.dst_entry** %19, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LL_RESERVED_SPACE(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = add i64 24, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %20, align 4
  %48 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %49 = icmp ne %struct.ipv6_txoptions* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %7
  %51 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %52 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %55 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i32, i32* %20, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %50, %7
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = call i32 @skb_headroom(%struct.sk_buff* %63)
  %65 = load i32, i32* %20, align 4
  %66 = icmp ult i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %62
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = load i32, i32* %20, align 4
  %73 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %71, i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %26, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = load %struct.net*, %struct.net** %16, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %78)
  %80 = call i32 @ip6_dst_idev(%struct.dst_entry* %79)
  %81 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %82 = call i32 @IP6_INC_STATS(%struct.net* %77, i32 %80, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* @ENOBUFS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %268

87:                                               ; preds = %70
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @skb_set_owner_w(%struct.sk_buff* %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = call i32 @consume_skb(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %10, align 8
  br label %102

102:                                              ; preds = %98, %62
  %103 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %104 = icmp ne %struct.ipv6_txoptions* %103, null
  br i1 %104, label %105, label %137

105:                                              ; preds = %102
  %106 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %107 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %110 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %23, align 4
  %117 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %118 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %124 = call i32 @ipv6_push_frag_opts(%struct.sk_buff* %122, %struct.ipv6_txoptions* %123, i32* %22)
  br label %125

125:                                              ; preds = %121, %105
  %126 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %127 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %132 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %13, align 8
  %133 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %134 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %133, i32 0, i32 0
  %135 = call i32 @ipv6_push_nfrag_opts(%struct.sk_buff* %131, %struct.ipv6_txoptions* %132, i32* %22, %struct.in6_addr** %18, i32* %134)
  br label %136

136:                                              ; preds = %130, %125
  br label %137

137:                                              ; preds = %136, %102
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = call i32 @skb_push(%struct.sk_buff* %138, i32 24)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = call i32 @skb_reset_network_header(%struct.sk_buff* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %142)
  store %struct.ipv6hdr* %143, %struct.ipv6hdr** %21, align 8
  %144 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %17, align 8
  %145 = icmp ne %struct.ipv6_pinfo* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %17, align 8
  %148 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %24, align 4
  br label %150

150:                                              ; preds = %146, %137
  %151 = load i32, i32* %24, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.dst_entry*, %struct.dst_entry** %19, align 8
  %155 = call i32 @ip6_dst_hoplimit(%struct.dst_entry* %154)
  store i32 %155, i32* %24, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.net*, %struct.net** %16, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %162 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.net*, %struct.net** %16, align 8
  %165 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %17, align 8
  %166 = call i32 @ip6_autoflowlabel(%struct.net* %164, %struct.ipv6_pinfo* %165)
  %167 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %168 = call i32 @ip6_make_flowlabel(%struct.net* %159, %struct.sk_buff* %160, i32 %163, i32 %166, %struct.flowi6* %167)
  %169 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %157, i32 %158, i32 %168)
  %170 = load i32, i32* %23, align 4
  %171 = call i8* @htons(i32 %170)
  %172 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %173 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %22, align 4
  %175 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %176 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %24, align 4
  %178 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %179 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %181 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %184 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ipv6hdr*, %struct.ipv6hdr** %21, align 8
  %186 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %185, i32 0, i32 1
  %187 = load %struct.in6_addr*, %struct.in6_addr** %18, align 8
  %188 = bitcast %struct.in6_addr* %186 to i8*
  %189 = bitcast %struct.in6_addr* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 4, i1 false)
  %190 = load i32, i32* @ETH_P_IPV6, align 4
  %191 = call i8* @htons(i32 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 5
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = load %struct.dst_entry*, %struct.dst_entry** %19, align 8
  %201 = call i32 @dst_mtu(%struct.dst_entry* %200)
  store i32 %201, i32* %25, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %25, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %216, label %207

207:                                              ; preds = %156
  %208 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %207
  %213 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %214 = call i64 @skb_is_gso(%struct.sk_buff* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %247

216:                                              ; preds = %212, %207, %156
  %217 = load %struct.net*, %struct.net** %16, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %219 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %218)
  %220 = call i32 @ip6_dst_idev(%struct.dst_entry* %219)
  %221 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %222 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @IP6_UPD_PO_STATS(%struct.net* %217, i32 %220, i32 %221, i32 %224)
  %226 = load %struct.sock*, %struct.sock** %9, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %228 = call %struct.sk_buff* @l3mdev_ip6_out(%struct.sock* %226, %struct.sk_buff* %227)
  store %struct.sk_buff* %228, %struct.sk_buff** %10, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %230 = icmp ne %struct.sk_buff* %229, null
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i64 @unlikely(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %216
  store i32 0, i32* %8, align 4
  br label %268

236:                                              ; preds = %216
  %237 = load i32, i32* @NFPROTO_IPV6, align 4
  %238 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %239 = load %struct.net*, %struct.net** %16, align 8
  %240 = load %struct.sock*, %struct.sock** %9, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %242 = load %struct.dst_entry*, %struct.dst_entry** %19, align 8
  %243 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @dst_output, align 4
  %246 = call i32 @NF_HOOK(i32 %237, i32 %238, %struct.net* %239, %struct.sock* %240, %struct.sk_buff* %241, i32* null, i32 %244, i32 %245)
  store i32 %246, i32* %8, align 4
  br label %268

247:                                              ; preds = %212
  %248 = load %struct.dst_entry*, %struct.dst_entry** %19, align 8
  %249 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %252 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.sock*, %struct.sock** %9, align 8
  %254 = load i32, i32* @EMSGSIZE, align 4
  %255 = load %struct.flowi6*, %struct.flowi6** %11, align 8
  %256 = load i32, i32* %25, align 4
  %257 = call i32 @ipv6_local_error(%struct.sock* %253, i32 %254, %struct.flowi6* %255, i32 %256)
  %258 = load %struct.net*, %struct.net** %16, align 8
  %259 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %260 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %259)
  %261 = call i32 @ip6_dst_idev(%struct.dst_entry* %260)
  %262 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %263 = call i32 @IP6_INC_STATS(%struct.net* %258, i32 %261, i32 %262)
  %264 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %265 = call i32 @kfree_skb(%struct.sk_buff* %264)
  %266 = load i32, i32* @EMSGSIZE, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %247, %236, %235, %76
  %269 = load i32, i32* %8, align 4
  ret i32 %269
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @LL_RESERVED_SPACE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_push_frag_opts(%struct.sk_buff*, %struct.ipv6_txoptions*, i32*) #1

declare dso_local i32 @ipv6_push_nfrag_opts(%struct.sk_buff*, %struct.ipv6_txoptions*, i32*, %struct.in6_addr**, i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6_dst_hoplimit(%struct.dst_entry*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @ip6_make_flowlabel(%struct.net*, %struct.sk_buff*, i32, i32, %struct.flowi6*) #1

declare dso_local i32 @ip6_autoflowlabel(%struct.net*, %struct.ipv6_pinfo*) #1

declare dso_local i8* @htons(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @l3mdev_ip6_out(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @ipv6_local_error(%struct.sock*, i32, %struct.flowi6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
