; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_getroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_getroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mpls_shim_hdr = type { i32 }
%struct.net_device = type { i32 }
%struct.mpls_route = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.mpls_nh = type { i32, i64, i32, i32, i32* }
%struct.nlattr = type { i32 }

@LABEL_NOT_SPECIFIED = common dso_local global i32 0, align 4
@RTA_MAX = common dso_local global i32 0, align 4
@MAX_NEW_LABELS = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@RTM_F_FIB_MATCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTA_NEWDST = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@ETH_P_MPLS_UC = common dso_local global i32 0, align 4
@AF_MPLS = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@MPLS_NEIGH_TABLE_UNSPEC = common dso_local global i64 0, align 8
@RTA_OIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @mpls_getroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_getroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mpls_shim_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca %struct.mpls_route*, align 8
  %19 = alloca %struct.rtmsg*, align 8
  %20 = alloca %struct.rtmsg*, align 8
  %21 = alloca %struct.nlmsghdr*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.mpls_nh*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.mpls_shim_hdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.net* @sock_net(i32 %33)
  store %struct.net* %34, %struct.net** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @NETLINK_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @LABEL_NOT_SPECIFIED, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @RTA_MAX, align 4
  %42 = add nsw i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %12, align 8
  %45 = alloca %struct.nlattr*, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %46 = load i32, i32* @MAX_NEW_LABELS, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %52 = call i32 @mpls_valid_getroute_req(%struct.sk_buff* %49, %struct.nlmsghdr* %50, %struct.nlattr** %45, %struct.netlink_ext_ack* %51)
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %25, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %3
  br label %334

56:                                               ; preds = %3
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %58 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %57)
  store %struct.rtmsg* %58, %struct.rtmsg** %19, align 8
  %59 = load i64, i64* @RTA_DST, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = load i64, i64* @RTA_DST, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %68 = call i64 @nla_get_labels(%struct.nlattr* %66, i32 1, i32* %26, i32* %11, %struct.netlink_ext_ack* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %25, align 4
  br label %334

73:                                               ; preds = %63
  %74 = load %struct.net*, %struct.net** %8, align 8
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %76 = call i32 @mpls_label_ok(%struct.net* %74, i32* %11, %struct.netlink_ext_ack* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %25, align 4
  br label %334

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call %struct.mpls_route* @mpls_route_input_rcu(%struct.net* %83, i32 %84)
  store %struct.mpls_route* %85, %struct.mpls_route** %18, align 8
  %86 = load %struct.mpls_route*, %struct.mpls_route** %18, align 8
  %87 = icmp ne %struct.mpls_route* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @ENETUNREACH, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %25, align 4
  br label %334

91:                                               ; preds = %82
  %92 = load %struct.rtmsg*, %struct.rtmsg** %19, align 8
  %93 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RTM_F_FIB_MATCH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %91
  %99 = load %struct.mpls_route*, %struct.mpls_route** %18, align 8
  %100 = call i32 @lfib_nlmsg_size(%struct.mpls_route* %99)
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.sk_buff* @nlmsg_new(i32 %100, i32 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %22, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %104 = icmp ne %struct.sk_buff* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOBUFS, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %25, align 4
  br label %334

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %112 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RTM_NEWROUTE, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.mpls_route*, %struct.mpls_route** %18, align 8
  %117 = call i32 @mpls_dump_route(%struct.sk_buff* %109, i32 %110, i32 %113, i32 %114, i32 %115, %struct.mpls_route* %116, i32 0)
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %25, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %108
  %121 = load i32, i32* %25, align 4
  %122 = load i32, i32* @EMSGSIZE, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @WARN_ON(i32 %125)
  br label %342

127:                                              ; preds = %108
  %128 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %129 = load %struct.net*, %struct.net** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @rtnl_unicast(%struct.sk_buff* %128, %struct.net* %129, i32 %130)
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %346

132:                                              ; preds = %91
  %133 = load i64, i64* @RTA_NEWDST, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = icmp ne %struct.nlattr* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %132
  %138 = load i64, i64* @RTA_NEWDST, align 8
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = load i32, i32* @MAX_NEW_LABELS, align 4
  %142 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %143 = call i64 @nla_get_labels(%struct.nlattr* %140, i32 %141, i32* %24, i32* %48, %struct.netlink_ext_ack* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %25, align 4
  br label %334

148:                                              ; preds = %137
  %149 = load i32, i32* %24, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %148, %132
  %154 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call %struct.sk_buff* @alloc_skb(i32 %154, i32 %155)
  store %struct.sk_buff* %156, %struct.sk_buff** %22, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %158 = icmp ne %struct.sk_buff* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* @ENOBUFS, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %25, align 4
  br label %334

162:                                              ; preds = %153
  %163 = load i32, i32* @ETH_P_MPLS_UC, align 4
  %164 = call i32 @htons(i32 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %211

169:                                              ; preds = %162
  %170 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %171 = load i32, i32* %16, align 4
  %172 = call i64 @skb_cow(%struct.sk_buff* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i32, i32* @ENOBUFS, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %25, align 4
  br label %342

177:                                              ; preds = %169
  %178 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @skb_reserve(%struct.sk_buff* %178, i32 %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @skb_push(%struct.sk_buff* %181, i32 %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %185 = call i32 @skb_reset_network_header(%struct.sk_buff* %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %187 = call %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff* %186)
  store %struct.mpls_shim_hdr* %187, %struct.mpls_shim_hdr** %15, align 8
  store i32 1, i32* %28, align 4
  %188 = load i32, i32* %24, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %29, align 4
  br label %190

190:                                              ; preds = %207, %177
  %191 = load i32, i32* %29, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %15, align 8
  %195 = load i32, i32* %29, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %194, i64 %196
  %198 = load i32, i32* %29, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %48, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %28, align 4
  %203 = call i32 @mpls_entry_encode(i32 %201, i32 1, i32 0, i32 %202)
  %204 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %30, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = bitcast %struct.mpls_shim_hdr* %197 to i8*
  %206 = bitcast %struct.mpls_shim_hdr* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %205, i8* align 4 %206, i64 4, i1 false)
  store i32 0, i32* %28, align 4
  br label %207

207:                                              ; preds = %193
  %208 = load i32, i32* %29, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %29, align 4
  br label %190

210:                                              ; preds = %190
  br label %211

211:                                              ; preds = %210, %162
  %212 = load %struct.mpls_route*, %struct.mpls_route** %18, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %214 = call %struct.mpls_nh* @mpls_select_multipath(%struct.mpls_route* %212, %struct.sk_buff* %213)
  store %struct.mpls_nh* %214, %struct.mpls_nh** %23, align 8
  %215 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %216 = icmp ne %struct.mpls_nh* %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = load i32, i32* @ENETUNREACH, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %25, align 4
  br label %342

220:                                              ; preds = %211
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @skb_pull(%struct.sk_buff* %224, i32 %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %228 = call i32 @skb_reset_network_header(%struct.sk_buff* %227)
  br label %229

229:                                              ; preds = %223, %220
  %230 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %233 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @RTM_NEWROUTE, align 4
  %236 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %230, i32 %231, i32 %234, i32 %235, i32 40, i32 0)
  store %struct.nlmsghdr* %236, %struct.nlmsghdr** %21, align 8
  %237 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %238 = icmp ne %struct.nlmsghdr* %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %229
  %240 = load i32, i32* @EMSGSIZE, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %25, align 4
  br label %342

242:                                              ; preds = %229
  %243 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %244 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %243)
  store %struct.rtmsg* %244, %struct.rtmsg** %20, align 8
  %245 = load i32, i32* @AF_MPLS, align 4
  %246 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %247 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %246, i32 0, i32 7
  store i32 %245, i32* %247, align 8
  %248 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %249 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %248, i32 0, i32 1
  store i32 20, i32* %249, align 4
  %250 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %251 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %250, i32 0, i32 6
  store i64 0, i64* %251, align 8
  %252 = load i32, i32* @RT_TABLE_MAIN, align 4
  %253 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %254 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @RTN_UNICAST, align 4
  %256 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %257 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %256, i32 0, i32 4
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %259 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %260 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  %261 = load %struct.mpls_route*, %struct.mpls_route** %18, align 8
  %262 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %265 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  %266 = load %struct.rtmsg*, %struct.rtmsg** %20, align 8
  %267 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %269 = load i64, i64* @RTA_DST, align 8
  %270 = call i64 @nla_put_labels(%struct.sk_buff* %268, i64 %269, i32 1, i32* %11)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %242
  br label %336

273:                                              ; preds = %242
  %274 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %275 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %273
  %279 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %280 = load i64, i64* @RTA_NEWDST, align 8
  %281 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %282 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %285 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %284, i32 0, i32 4
  %286 = load i32*, i32** %285, align 8
  %287 = call i64 @nla_put_labels(%struct.sk_buff* %279, i64 %280, i32 %283, i32* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %278
  br label %336

290:                                              ; preds = %278, %273
  %291 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %292 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @MPLS_NEIGH_TABLE_UNSPEC, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %310

296:                                              ; preds = %290
  %297 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %298 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %299 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.mpls_route*, %struct.mpls_route** %18, align 8
  %302 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %303 = call i32 @mpls_nh_via(%struct.mpls_route* %301, %struct.mpls_nh* %302)
  %304 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %305 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = call i64 @nla_put_via(%struct.sk_buff* %297, i64 %300, i32 %303, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %296
  br label %336

310:                                              ; preds = %296, %290
  %311 = load %struct.mpls_nh*, %struct.mpls_nh** %23, align 8
  %312 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call %struct.net_device* @rtnl_dereference(i32 %313)
  store %struct.net_device* %314, %struct.net_device** %17, align 8
  %315 = load %struct.net_device*, %struct.net_device** %17, align 8
  %316 = icmp ne %struct.net_device* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %310
  %318 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %319 = load i32, i32* @RTA_OIF, align 4
  %320 = load %struct.net_device*, %struct.net_device** %17, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i64 @nla_put_u32(%struct.sk_buff* %318, i32 %319, i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %317
  br label %336

326:                                              ; preds = %317, %310
  %327 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %328 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %329 = call i32 @nlmsg_end(%struct.sk_buff* %327, %struct.nlmsghdr* %328)
  %330 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %331 = load %struct.net*, %struct.net** %8, align 8
  %332 = load i32, i32* %9, align 4
  %333 = call i32 @rtnl_unicast(%struct.sk_buff* %330, %struct.net* %331, i32 %332)
  store i32 %333, i32* %25, align 4
  br label %334

334:                                              ; preds = %326, %159, %145, %105, %88, %78, %70, %55
  %335 = load i32, i32* %25, align 4
  store i32 %335, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %346

336:                                              ; preds = %325, %309, %289, %272
  %337 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %338 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %339 = call i32 @nlmsg_cancel(%struct.sk_buff* %337, %struct.nlmsghdr* %338)
  %340 = load i32, i32* @EMSGSIZE, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %25, align 4
  br label %342

342:                                              ; preds = %336, %239, %217, %174, %120
  %343 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %344 = call i32 @kfree_skb(%struct.sk_buff* %343)
  %345 = load i32, i32* %25, align 4
  store i32 %345, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %346

346:                                              ; preds = %342, %334, %127
  %347 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %4, align 4
  ret i32 %348
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mpls_valid_getroute_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_get_labels(%struct.nlattr*, i32, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mpls_label_ok(%struct.net*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.mpls_route* @mpls_route_input_rcu(%struct.net*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @lfib_nlmsg_size(%struct.mpls_route*) #1

declare dso_local i32 @mpls_dump_route(%struct.sk_buff*, i32, i32, i32, i32, %struct.mpls_route*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.mpls_shim_hdr* @mpls_hdr(%struct.sk_buff*) #1

declare dso_local i32 @mpls_entry_encode(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.mpls_nh* @mpls_select_multipath(%struct.mpls_route*, %struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_labels(%struct.sk_buff*, i64, i32, i32*) #1

declare dso_local i64 @nla_put_via(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @mpls_nh_via(%struct.mpls_route*, %struct.mpls_nh*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
