; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_echo_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_echo_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.sock = type { i8* }
%struct.inet6_dev = type { i32 }
%struct.ipv6_pinfo = type { i64, i64 }
%struct.in6_addr = type { i32 }
%struct.icmp6hdr = type { i8* }
%struct.flowi6 = type { i64, %struct.in6_addr, i32, i8*, i8*, %struct.in6_addr, i32, i32 }
%struct.icmpv6_msg = type { i8*, i64, %struct.sk_buff* }
%struct.dst_entry = type { i32 }
%struct.ipcm6_cookie = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.in6_addr, %struct.in6_addr }
%struct.rt6_info = type { i32 }

@ICMPV6_ECHO_REPLY = common dso_local global i8* null, align 8
@FLOWLABEL_REFLECT_ICMPV6_ECHO_REPLIES = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@icmpv6_getfrag = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ICMP6_MIB_OUTERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @icmpv6_echo_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmpv6_echo_reply(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.icmp6hdr*, align 8
  %9 = alloca %struct.icmp6hdr, align 8
  %10 = alloca %struct.flowi6, align 8
  %11 = alloca %struct.icmpv6_msg, align 8
  %12 = alloca %struct.dst_entry*, align 8
  %13 = alloca %struct.ipcm6_cookie, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = call %struct.net* @dev_net(%struct.TYPE_11__* %18)
  store %struct.net* %19, %struct.net** %3, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff* %20)
  store %struct.icmp6hdr* %21, %struct.icmp6hdr** %8, align 8
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @IP6_REPLY_MARK(%struct.net* %22, i32 %25)
  store i8* %26, i8** %14, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.net*, %struct.net** %3, align 8
  %34 = getelementptr inbounds %struct.net, %struct.net* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %246

40:                                               ; preds = %32, %1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store %struct.in6_addr* %43, %struct.in6_addr** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = call i32 @skb_dst(%struct.sk_buff* %44)
  %46 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %47 = call i32 @ipv6_anycast_destination(i32 %45, %struct.in6_addr* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.net*, %struct.net** %3, align 8
  %52 = getelementptr inbounds %struct.net, %struct.net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %246

58:                                               ; preds = %50, %40
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = call i32 @ipv6_unicast_destination(%struct.sk_buff* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load %struct.net*, %struct.net** %3, align 8
  %64 = getelementptr inbounds %struct.net, %struct.net* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %62
  store %struct.in6_addr* null, %struct.in6_addr** %7, align 8
  br label %73

73:                                               ; preds = %72, %69, %58
  %74 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %75 = call i32 @memcpy(%struct.icmp6hdr* %9, %struct.icmp6hdr* %74, i32 8)
  %76 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %77 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %9, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = call i32 @memset(%struct.flowi6* %10, i32 0, i32 48)
  %79 = load %struct.net*, %struct.net** %3, align 8
  %80 = getelementptr inbounds %struct.net, %struct.net* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @FLOWLABEL_REFLECT_ICMPV6_ECHO_REPLIES, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %89 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %88)
  %90 = call i32 @ip6_flowlabel(%struct.TYPE_10__* %89)
  %91 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 7
  store i32 %90, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %73
  %93 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %94 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 6
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 1
  %96 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %97 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = bitcast %struct.in6_addr* %95 to i8*
  %100 = bitcast %struct.in6_addr* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %102 = icmp ne %struct.in6_addr* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 5
  %105 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %106 = bitcast %struct.in6_addr* %104 to i8*
  %107 = bitcast %struct.in6_addr* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 4 %107, i64 4, i1 false)
  br label %108

108:                                              ; preds = %103, %92
  %109 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %110 = call i64 @icmp6_iif(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %113 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 4
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 3
  store i8* %114, i8** %115, align 8
  %116 = load %struct.net*, %struct.net** %3, align 8
  %117 = call i32 @sock_net_uid(%struct.net* %116, i32* null)
  %118 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %120 = call i32 @flowi6_to_flowi(%struct.flowi6* %10)
  %121 = call i32 @security_skb_classify_flow(%struct.sk_buff* %119, i32 %120)
  %122 = call i32 (...) @local_bh_disable()
  %123 = load %struct.net*, %struct.net** %3, align 8
  %124 = call %struct.sock* @icmpv6_xmit_lock(%struct.net* %123)
  store %struct.sock* %124, %struct.sock** %4, align 8
  %125 = load %struct.sock*, %struct.sock** %4, align 8
  %126 = icmp ne %struct.sock* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %108
  br label %244

128:                                              ; preds = %108
  %129 = load i8*, i8** %14, align 8
  %130 = load %struct.sock*, %struct.sock** %4, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.sock*, %struct.sock** %4, align 8
  %133 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %132)
  store %struct.ipv6_pinfo* %133, %struct.ipv6_pinfo** %6, align 8
  %134 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 1
  %139 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %143 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  store i64 %144, i64* %145, align 8
  br label %156

146:                                              ; preds = %137, %128
  %147 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %152 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %141
  %157 = load %struct.net*, %struct.net** %3, align 8
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = call i64 @ip6_dst_lookup(%struct.net* %157, %struct.sock* %158, %struct.dst_entry** %12, %struct.flowi6* %10)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %241

162:                                              ; preds = %156
  %163 = load %struct.net*, %struct.net** %3, align 8
  %164 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %165 = call i32 @flowi6_to_flowi(%struct.flowi6* %10)
  %166 = load %struct.sock*, %struct.sock** %4, align 8
  %167 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %163, %struct.dst_entry* %164, i32 %165, %struct.sock* %166, i32 0)
  store %struct.dst_entry* %167, %struct.dst_entry** %12, align 8
  %168 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %169 = call i64 @IS_ERR(%struct.dst_entry* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %241

172:                                              ; preds = %162
  %173 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IFF_LOOPBACK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %172
  %182 = load %struct.net*, %struct.net** %3, align 8
  %183 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %184 = call i32 @icmpv6_global_allow(%struct.net* %182, i8* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181, %172
  %187 = load %struct.sock*, %struct.sock** %4, align 8
  %188 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %189 = call i32 @icmpv6_xrlim_allow(%struct.sock* %187, i8* %188, %struct.flowi6* %10)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186, %181
  br label %238

192:                                              ; preds = %186
  %193 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 1
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = call %struct.inet6_dev* @__in6_dev_get(%struct.TYPE_11__* %195)
  store %struct.inet6_dev* %196, %struct.inet6_dev** %5, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %198 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %11, i32 0, i32 2
  store %struct.sk_buff* %197, %struct.sk_buff** %198, align 8
  %199 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %11, i32 0, i32 1
  store i64 0, i64* %199, align 8
  %200 = load i8*, i8** @ICMPV6_ECHO_REPLY, align 8
  %201 = getelementptr inbounds %struct.icmpv6_msg, %struct.icmpv6_msg* %11, i32 0, i32 0
  store i8* %200, i8** %201, align 8
  %202 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %203 = call i32 @ipcm6_init_sk(%struct.ipcm6_cookie* %13, %struct.ipv6_pinfo* %202)
  %204 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %205 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %206 = call i32 @ip6_sk_dst_hoplimit(%struct.ipv6_pinfo* %204, %struct.flowi6* %10, %struct.dst_entry* %205)
  %207 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %13, i32 0, i32 1
  store i32 %206, i32* %207, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %209 = call %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff* %208)
  %210 = call i32 @ipv6_get_dsfield(%struct.TYPE_10__* %209)
  %211 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %13, i32 0, i32 0
  store i32 %210, i32* %211, align 4
  %212 = load %struct.sock*, %struct.sock** %4, align 8
  %213 = load i32, i32* @icmpv6_getfrag, align 4
  %214 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 8
  %218 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %219 = bitcast %struct.dst_entry* %218 to %struct.rt6_info*
  %220 = load i32, i32* @MSG_DONTWAIT, align 4
  %221 = call i64 @ip6_append_data(%struct.sock* %212, i32 %213, %struct.icmpv6_msg* %11, i64 %217, i32 8, %struct.ipcm6_cookie* %13, %struct.flowi6* %10, %struct.rt6_info* %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %192
  %224 = load %struct.net*, %struct.net** %3, align 8
  %225 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %226 = load i32, i32* @ICMP6_MIB_OUTERRORS, align 4
  %227 = call i32 @__ICMP6_INC_STATS(%struct.net* %224, %struct.inet6_dev* %225, i32 %226)
  %228 = load %struct.sock*, %struct.sock** %4, align 8
  %229 = call i32 @ip6_flush_pending_frames(%struct.sock* %228)
  br label %237

230:                                              ; preds = %192
  %231 = load %struct.sock*, %struct.sock** %4, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %234, 8
  %236 = call i32 @icmpv6_push_pending_frames(%struct.sock* %231, %struct.flowi6* %10, %struct.icmp6hdr* %9, i64 %235)
  br label %237

237:                                              ; preds = %230, %223
  br label %238

238:                                              ; preds = %237, %191
  %239 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %240 = call i32 @dst_release(%struct.dst_entry* %239)
  br label %241

241:                                              ; preds = %238, %171, %161
  %242 = load %struct.sock*, %struct.sock** %4, align 8
  %243 = call i32 @icmpv6_xmit_unlock(%struct.sock* %242)
  br label %244

244:                                              ; preds = %241, %127
  %245 = call i32 (...) @local_bh_enable()
  br label %246

246:                                              ; preds = %244, %57, %39
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_11__*) #1

declare dso_local %struct.icmp6hdr* @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @IP6_REPLY_MARK(%struct.net*, i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.TYPE_10__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_anycast_destination(i32, %struct.in6_addr*) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_unicast_destination(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.icmp6hdr*, %struct.icmp6hdr*, i32) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i32 @ip6_flowlabel(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @icmp6_iif(%struct.sk_buff*) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local %struct.sock* @icmpv6_xmit_lock(%struct.net*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @ip6_dst_lookup(%struct.net*, %struct.sock*, %struct.dst_entry**, %struct.flowi6*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, %struct.dst_entry*, i32, %struct.sock*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_global_allow(%struct.net*, i8*) #1

declare dso_local i32 @icmpv6_xrlim_allow(%struct.sock*, i8*, %struct.flowi6*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.TYPE_11__*) #1

declare dso_local i32 @ipcm6_init_sk(%struct.ipcm6_cookie*, %struct.ipv6_pinfo*) #1

declare dso_local i32 @ip6_sk_dst_hoplimit(%struct.ipv6_pinfo*, %struct.flowi6*, %struct.dst_entry*) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.TYPE_10__*) #1

declare dso_local i64 @ip6_append_data(%struct.sock*, i32, %struct.icmpv6_msg*, i64, i32, %struct.ipcm6_cookie*, %struct.flowi6*, %struct.rt6_info*, i32) #1

declare dso_local i32 @__ICMP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @ip6_flush_pending_frames(%struct.sock*) #1

declare dso_local i32 @icmpv6_push_pending_frames(%struct.sock*, %struct.flowi6*, %struct.icmp6hdr*, i64) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @icmpv6_xmit_unlock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
