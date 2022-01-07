; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_inet_rtm_getroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_inet_rtm_getroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.net_device* }
%struct.fib_result = type { i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rtable = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rtmsg = type { i32, i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@RTA_SRC = common dso_local global i64 0, align 8
@RTA_DST = common dso_local global i64 0, align 8
@RTA_IIF = common dso_local global i64 0, align 8
@RTA_MARK = common dso_local global i64 0, align 8
@RTA_UID = common dso_local global i64 0, align 8
@INVALID_UID = common dso_local global i32 0, align 4
@RTA_IP_PROTO = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@RTA_SPORT = common dso_local global i64 0, align 8
@RTA_DPORT = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@RTM_F_NOTIFY = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@RTM_F_LOOKUP_TABLE = common dso_local global i32 0, align 4
@RTM_F_FIB_MATCH = common dso_local global i32 0, align 4
@fib_props = common dso_local global %struct.TYPE_7__* null, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet_rtm_getroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_getroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.fib_result, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.rtmsg*, align 8
  %19 = alloca %struct.flowi4, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.net_device*, align 8
  %28 = alloca %struct.TYPE_8__, align 4
  %29 = alloca %struct.TYPE_8__, align 4
  %30 = alloca %struct.TYPE_8__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.net* @sock_net(i32 %33)
  store %struct.net* %34, %struct.net** %8, align 8
  %35 = load i32, i32* @RTA_MAX, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %9, align 8
  %39 = alloca %struct.nlattr*, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  %40 = load i32, i32* @RT_TABLE_MAIN, align 4
  store i32 %40, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %41 = bitcast %struct.fib_result* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 32, i1 false)
  %42 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %42, i32* %15, align 4
  store %struct.rtable* null, %struct.rtable** %16, align 8
  %43 = bitcast %struct.flowi4* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 64, i1 false)
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %47 = call i32 @inet_rtm_valid_getroute_req(%struct.sk_buff* %44, %struct.nlmsghdr* %45, %struct.nlattr** %39, %struct.netlink_ext_ack* %46)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %411

52:                                               ; preds = %3
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %54 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %53)
  store %struct.rtmsg* %54, %struct.rtmsg** %18, align 8
  %55 = load i64, i64* @RTA_SRC, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i64, i64* @RTA_SRC, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i8* @nla_get_in_addr(%struct.nlattr* %62)
  br label %65

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %59
  %66 = phi i8* [ %63, %59 ], [ null, %64 ]
  store i8* %66, i8** %21, align 8
  %67 = load i64, i64* @RTA_DST, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64, i64* @RTA_DST, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i8* @nla_get_in_addr(%struct.nlattr* %74)
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i8* [ %75, %71 ], [ null, %76 ]
  store i8* %78, i8** %20, align 8
  %79 = load i64, i64* @RTA_IIF, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i64, i64* @RTA_IIF, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i8* @nla_get_u32(%struct.nlattr* %86)
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i8* [ %87, %83 ], [ null, %88 ]
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %23, align 4
  %92 = load i64, i64* @RTA_MARK, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i64, i64* @RTA_MARK, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i8* @nla_get_u32(%struct.nlattr* %99)
  br label %102

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %96
  %103 = phi i8* [ %100, %96 ], [ null, %101 ]
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %25, align 4
  %105 = load i64, i64* @RTA_UID, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = call i32 (...) @current_user_ns()
  %111 = load i64, i64* @RTA_UID, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_get_u32(%struct.nlattr* %113)
  %115 = call i32 @make_kuid(i32 %110, i8* %114)
  store i32 %115, i32* %22, align 4
  br label %125

116:                                              ; preds = %102
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @INVALID_UID, align 4
  br label %123

121:                                              ; preds = %116
  %122 = call i32 (...) @current_uid()
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  store i32 %124, i32* %22, align 4
  br label %125

125:                                              ; preds = %123, %109
  %126 = load i64, i64* @RTA_IP_PROTO, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load i64, i64* @RTA_IP_PROTO, align 8
  %132 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %131
  %133 = load %struct.nlattr*, %struct.nlattr** %132, align 8
  %134 = load i32, i32* @AF_INET, align 4
  %135 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %136 = call i32 @rtm_getroute_parse_ip_proto(%struct.nlattr* %133, i32* %15, i32 %134, %struct.netlink_ext_ack* %135)
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %24, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i32, i32* %24, align 4
  store i32 %140, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %411

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %125
  %143 = load i64, i64* @RTA_SPORT, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = icmp ne %struct.nlattr* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i64, i64* @RTA_SPORT, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = call i8* @nla_get_be16(%struct.nlattr* %150)
  store i8* %151, i8** %12, align 8
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i64, i64* @RTA_DPORT, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = icmp ne %struct.nlattr* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i64, i64* @RTA_DPORT, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = call i8* @nla_get_be16(%struct.nlattr* %160)
  store i8* %161, i8** %13, align 8
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i8*, i8** %21, align 8
  %164 = load i8*, i8** %20, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i8*, i8** %12, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = call %struct.sk_buff* @inet_rtm_getroute_build_skb(i8* %163, i8* %164, i32 %165, i8* %166, i8* %167)
  store %struct.sk_buff* %168, %struct.sk_buff** %17, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %170 = icmp ne %struct.sk_buff* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %162
  %172 = load i32, i32* @ENOBUFS, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %411

174:                                              ; preds = %162
  %175 = load i8*, i8** %20, align 8
  %176 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 9
  store i8* %175, i8** %176, align 8
  %177 = load i8*, i8** %21, align 8
  %178 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 8
  store i8* %177, i8** %178, align 8
  %179 = load %struct.rtmsg*, %struct.rtmsg** %18, align 8
  %180 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 2
  store i32 %181, i32* %182, align 8
  %183 = load i64, i64* @RTA_OIF, align 8
  %184 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %183
  %185 = load %struct.nlattr*, %struct.nlattr** %184, align 8
  %186 = icmp ne %struct.nlattr* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %174
  %188 = load i64, i64* @RTA_OIF, align 8
  %189 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %188
  %190 = load %struct.nlattr*, %struct.nlattr** %189, align 8
  %191 = call i8* @nla_get_u32(%struct.nlattr* %190)
  br label %193

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %187
  %194 = phi i8* [ %191, %187 ], [ null, %192 ]
  %195 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 7
  store i8* %194, i8** %195, align 8
  %196 = load i32, i32* %25, align 4
  %197 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  %198 = load i32, i32* %22, align 4
  %199 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 6
  store i32 %198, i32* %199, align 8
  %200 = load i8*, i8** %12, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 5
  store i8* %203, i8** %204, align 8
  br label %205

205:                                              ; preds = %202, %193
  %206 = load i8*, i8** %13, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 4
  store i8* %209, i8** %210, align 8
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %15, align 4
  %213 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 3
  store i32 %212, i32* %213, align 4
  %214 = call i32 (...) @rcu_read_lock()
  %215 = load i32, i32* %23, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %260

217:                                              ; preds = %211
  %218 = load %struct.net*, %struct.net** %8, align 8
  %219 = load i32, i32* %23, align 4
  %220 = call %struct.net_device* @dev_get_by_index_rcu(%struct.net* %218, i32 %219)
  store %struct.net_device* %220, %struct.net_device** %27, align 8
  %221 = load %struct.net_device*, %struct.net_device** %27, align 8
  %222 = icmp ne %struct.net_device* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* @ENODEV, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %24, align 4
  br label %407

226:                                              ; preds = %217
  %227 = load i32, i32* %23, align 4
  %228 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 1
  store i32 %227, i32* %228, align 4
  %229 = load %struct.net_device*, %struct.net_device** %27, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 1
  store %struct.net_device* %229, %struct.net_device** %231, align 8
  %232 = load i32, i32* %25, align 4
  %233 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %234 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %236 = load i8*, i8** %20, align 8
  %237 = load i8*, i8** %21, align 8
  %238 = load %struct.rtmsg*, %struct.rtmsg** %18, align 8
  %239 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.net_device*, %struct.net_device** %27, align 8
  %242 = call i32 @ip_route_input_rcu(%struct.sk_buff* %235, i8* %236, i8* %237, i32 %240, %struct.net_device* %241, %struct.fib_result* %14)
  store i32 %242, i32* %24, align 4
  %243 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %244 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %243)
  store %struct.rtable* %244, %struct.rtable** %16, align 8
  %245 = load i32, i32* %24, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %226
  %248 = load %struct.rtable*, %struct.rtable** %16, align 8
  %249 = getelementptr inbounds %struct.rtable, %struct.rtable* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %247
  %254 = load %struct.rtable*, %struct.rtable** %16, align 8
  %255 = getelementptr inbounds %struct.rtable, %struct.rtable* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %24, align 4
  br label %259

259:                                              ; preds = %253, %247, %226
  br label %283

260:                                              ; preds = %211
  %261 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %262 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 1
  store i32 %261, i32* %262, align 4
  %263 = load %struct.net*, %struct.net** %8, align 8
  %264 = getelementptr inbounds %struct.net, %struct.net* %263, i32 0, i32 0
  %265 = load %struct.net_device*, %struct.net_device** %264, align 8
  %266 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 1
  store %struct.net_device* %265, %struct.net_device** %267, align 8
  %268 = load %struct.net*, %struct.net** %8, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %270 = call %struct.rtable* @ip_route_output_key_hash_rcu(%struct.net* %268, %struct.flowi4* %19, %struct.fib_result* %14, %struct.sk_buff* %269)
  store %struct.rtable* %270, %struct.rtable** %16, align 8
  store i32 0, i32* %24, align 4
  %271 = load %struct.rtable*, %struct.rtable** %16, align 8
  %272 = call i64 @IS_ERR(%struct.rtable* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %260
  %275 = load %struct.rtable*, %struct.rtable** %16, align 8
  %276 = call i32 @PTR_ERR(%struct.rtable* %275)
  store i32 %276, i32* %24, align 4
  br label %282

277:                                              ; preds = %260
  %278 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %279 = load %struct.rtable*, %struct.rtable** %16, align 8
  %280 = getelementptr inbounds %struct.rtable, %struct.rtable* %279, i32 0, i32 2
  %281 = call i32 @skb_dst_set(%struct.sk_buff* %278, %struct.TYPE_6__* %280)
  br label %282

282:                                              ; preds = %277, %274
  br label %283

283:                                              ; preds = %282, %259
  %284 = load i32, i32* %24, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %407

287:                                              ; preds = %283
  %288 = load %struct.rtmsg*, %struct.rtmsg** %18, align 8
  %289 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @RTM_F_NOTIFY, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %287
  %295 = load i32, i32* @RTCF_NOTIFY, align 4
  %296 = load %struct.rtable*, %struct.rtable** %16, align 8
  %297 = getelementptr inbounds %struct.rtable, %struct.rtable* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %294, %287
  %301 = load %struct.rtmsg*, %struct.rtmsg** %18, align 8
  %302 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @RTM_F_LOOKUP_TABLE, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 4
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %308, align 8
  %310 = icmp ne %struct.TYPE_5__* %309, null
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 4
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  br label %317

316:                                              ; preds = %307
  br label %317

317:                                              ; preds = %316, %311
  %318 = phi i32 [ %315, %311 ], [ 0, %316 ]
  store i32 %318, i32* %11, align 4
  br label %319

319:                                              ; preds = %317, %300
  %320 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %321 = call i32 @skb_trim(%struct.sk_buff* %320, i32 0)
  %322 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %323 = call i32 @skb_reset_network_header(%struct.sk_buff* %322)
  %324 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %325 = call i32 @skb_reset_transport_header(%struct.sk_buff* %324)
  %326 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %327 = call i32 @skb_reset_mac_header(%struct.sk_buff* %326)
  %328 = load %struct.rtmsg*, %struct.rtmsg** %18, align 8
  %329 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @RTM_F_FIB_MATCH, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %375

334:                                              ; preds = %319
  %335 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %351, label %338

338:                                              ; preds = %334
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fib_props, align 8
  %340 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %24, align 4
  %345 = load i32, i32* %24, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %338
  %348 = load i32, i32* @EHOSTUNREACH, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %24, align 4
  br label %350

350:                                              ; preds = %347, %338
  br label %407

351:                                              ; preds = %334
  %352 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %353 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %354 = call i32 @NETLINK_CB(%struct.sk_buff* %353)
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %354, i32* %355, align 4
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %359 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @RTM_NEWROUTE, align 4
  %362 = load i32, i32* %11, align 4
  %363 = load %struct.rtable*, %struct.rtable** %16, align 8
  %364 = getelementptr inbounds %struct.rtable, %struct.rtable* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %19, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %14, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @fib_dump_info(%struct.sk_buff* %352, i32 %357, i32 %360, i32 %361, i32 %362, i32 %365, i32 %367, i32 %369, i32 %371, i32 %373, i32 0)
  store i32 %374, i32* %24, align 4
  br label %391

375:                                              ; preds = %319
  %376 = load %struct.net*, %struct.net** %8, align 8
  %377 = load i8*, i8** %20, align 8
  %378 = load i8*, i8** %21, align 8
  %379 = load %struct.rtable*, %struct.rtable** %16, align 8
  %380 = load i32, i32* %11, align 4
  %381 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %382 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %383 = call i32 @NETLINK_CB(%struct.sk_buff* %382)
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %383, i32* %384, align 4
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %388 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @rt_fill_info(%struct.net* %376, i8* %377, i8* %378, %struct.rtable* %379, i32 %380, %struct.flowi4* %19, %struct.sk_buff* %381, i32 %386, i32 %389, i32 0)
  store i32 %390, i32* %24, align 4
  br label %391

391:                                              ; preds = %375, %351
  %392 = load i32, i32* %24, align 4
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  br label %407

395:                                              ; preds = %391
  %396 = call i32 (...) @rcu_read_unlock()
  %397 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %398 = load %struct.net*, %struct.net** %8, align 8
  %399 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %400 = call i32 @NETLINK_CB(%struct.sk_buff* %399)
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %400, i32* %401, align 4
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @rtnl_unicast(%struct.sk_buff* %397, %struct.net* %398, i32 %403)
  store i32 %404, i32* %24, align 4
  br label %405

405:                                              ; preds = %407, %395
  %406 = load i32, i32* %24, align 4
  store i32 %406, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %411

407:                                              ; preds = %394, %350, %286, %223
  %408 = call i32 (...) @rcu_read_unlock()
  %409 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %410 = call i32 @kfree_skb(%struct.sk_buff* %409)
  br label %405

411:                                              ; preds = %405, %171, %139, %50
  %412 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %412)
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @inet_rtm_valid_getroute_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @make_kuid(i32, i8*) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @current_uid(...) #1

declare dso_local i32 @rtm_getroute_parse_ip_proto(%struct.nlattr*, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i8* @nla_get_be16(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @inet_rtm_getroute_build_skb(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local i32 @ip_route_input_rcu(%struct.sk_buff*, i8*, i8*, i32, %struct.net_device*, %struct.fib_result*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @ip_route_output_key_hash_rcu(%struct.net*, %struct.flowi4*, %struct.fib_result*, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @fib_dump_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rt_fill_info(%struct.net*, i8*, i8*, %struct.rtable*, i32, %struct.flowi4*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

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
