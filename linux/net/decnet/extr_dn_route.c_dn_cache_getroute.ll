; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_cache_getroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_cache_getroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.rtmsg = type { i32 }
%struct.dn_route = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dn_skb_cb = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.flowidn = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.dst_entry = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rtm_dn_policy = common dso_local global i32 0, align 4
@DNPROTO_NSP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i64 0, align 8
@RTA_DST = common dso_local global i64 0, align 8
@RTA_IIF = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ETH_P_DNA_RT = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i64 0, align 8
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @dn_cache_getroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_cache_getroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.rtmsg*, align 8
  %10 = alloca %struct.dn_route*, align 8
  %11 = alloca %struct.dn_skb_cb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.flowidn, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca %struct.TYPE_4__, align 4
  %20 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net* @sock_net(i32 %23)
  store %struct.net* %24, %struct.net** %8, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.rtmsg* %26, %struct.rtmsg** %9, align 8
  store %struct.dn_route* null, %struct.dn_route** %10, align 8
  %27 = load i32, i32* @RTA_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca %struct.nlattr*, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = call i32 @net_eq(%struct.net* %32, i32* @init_net)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %225

38:                                               ; preds = %3
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %40 = load i32, i32* @RTA_MAX, align 4
  %41 = load i32, i32* @rtm_dn_policy, align 4
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %39, i32 4, %struct.nlattr** %31, i32 %40, i32 %41, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %225

48:                                               ; preds = %38
  %49 = call i32 @memset(%struct.flowidn* %14, i32 0, i32 56)
  %50 = load i32, i32* @DNPROTO_NSP, align 4
  %51 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 6
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.sk_buff* @nlmsg_new(i32 %52, i32 %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %13, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = icmp eq %struct.sk_buff* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %225

60:                                               ; preds = %48
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = call i32 @skb_reset_mac_header(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %64 = call %struct.flowidn* @DN_SKB_CB(%struct.sk_buff* %63)
  %65 = bitcast %struct.flowidn* %64 to %struct.dn_skb_cb*
  store %struct.dn_skb_cb* %65, %struct.dn_skb_cb** %11, align 8
  %66 = load i64, i64* @RTA_SRC, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp ne %struct.nlattr* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i64, i64* @RTA_SRC, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i8* @nla_get_le16(%struct.nlattr* %73)
  %75 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %60
  %77 = load i64, i64* @RTA_DST, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i64, i64* @RTA_DST, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i8* @nla_get_le16(%struct.nlattr* %84)
  %86 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i64, i64* @RTA_IIF, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = icmp ne %struct.nlattr* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i64, i64* @RTA_IIF, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i8* @nla_get_u32(%struct.nlattr* %95)
  %97 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 5
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %159

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i8* %104)
  store %struct.net_device* %105, %struct.net_device** %18, align 8
  %106 = load %struct.net_device*, %struct.net_device** %18, align 8
  %107 = icmp ne %struct.net_device* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.net_device*, %struct.net_device** %18, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108, %102
  %114 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %225

118:                                              ; preds = %108
  %119 = load i32, i32* @ETH_P_DNA_RT, align 4
  %120 = call i32 @htons(i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.net_device*, %struct.net_device** %18, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  store %struct.net_device* %123, %struct.net_device** %125, align 8
  %126 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %129 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  %130 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %133 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = call i32 (...) @local_bh_disable()
  %135 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %136 = call i32 @dn_route_input(%struct.sk_buff* %135)
  store i32 %136, i32* %12, align 4
  %137 = call i32 (...) @local_bh_enable()
  %138 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %11, align 8
  %139 = bitcast %struct.dn_skb_cb* %138 to %struct.flowidn*
  %140 = call i32 @memset(%struct.flowidn* %139, i32 0, i32 56)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %142 = call i64 @skb_dst(%struct.sk_buff* %141)
  %143 = inttoptr i64 %142 to %struct.dn_route*
  store %struct.dn_route* %143, %struct.dn_route** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %118
  %147 = load %struct.dn_route*, %struct.dn_route** %10, align 8
  %148 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.dn_route*, %struct.dn_route** %10, align 8
  %155 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %153, %146, %118
  br label %173

159:                                              ; preds = %98
  %160 = load i64, i64* @RTA_OIF, align 8
  %161 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %160
  %162 = load %struct.nlattr*, %struct.nlattr** %161, align 8
  %163 = icmp ne %struct.nlattr* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i64, i64* @RTA_OIF, align 8
  %166 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %165
  %167 = load %struct.nlattr*, %struct.nlattr** %166, align 8
  %168 = call i8* @nla_get_u32(%struct.nlattr* %167)
  %169 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %14, i32 0, i32 0
  store i8* %168, i8** %169, align 8
  br label %170

170:                                              ; preds = %164, %159
  %171 = bitcast %struct.dn_route** %10 to %struct.dst_entry**
  %172 = call i32 @dn_route_output_key(%struct.dst_entry** %171, %struct.flowidn* %14, i32 0)
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %170, %158
  %174 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %221

179:                                              ; preds = %173
  %180 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %181 = load %struct.dn_route*, %struct.dn_route** %10, align 8
  %182 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %181, i32 0, i32 1
  %183 = call i32 @skb_dst_set(%struct.sk_buff* %180, %struct.TYPE_3__* %182)
  %184 = load %struct.rtmsg*, %struct.rtmsg** %9, align 8
  %185 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @RTM_F_NOTIFY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %179
  %191 = load i32, i32* @RTCF_NOTIFY, align 4
  %192 = load %struct.dn_route*, %struct.dn_route** %10, align 8
  %193 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %190, %179
  %197 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = call i32 @NETLINK_CB(%struct.sk_buff* %198)
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %204 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @RTM_NEWROUTE, align 4
  %207 = call i32 @dn_rt_fill_info(%struct.sk_buff* %197, i32 %202, i32 %205, i32 %206, i32 0, i32 0)
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %196
  %211 = load i32, i32* @EMSGSIZE, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %12, align 4
  br label %221

213:                                              ; preds = %196
  %214 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = call i32 @NETLINK_CB(%struct.sk_buff* %215)
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %216, i32* %217, align 4
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @rtnl_unicast(%struct.sk_buff* %214, i32* @init_net, i32 %219)
  store i32 %220, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %225

221:                                              ; preds = %210, %178
  %222 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %223 = call i32 @kfree_skb(%struct.sk_buff* %222)
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %225

225:                                              ; preds = %221, %213, %113, %57, %46, %35
  %226 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @memset(%struct.flowidn*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.flowidn* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @nla_get_le16(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @dn_route_input(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dn_route_output_key(%struct.dst_entry**, %struct.flowidn*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_3__*) #1

declare dso_local i32 @dn_rt_fill_info(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
