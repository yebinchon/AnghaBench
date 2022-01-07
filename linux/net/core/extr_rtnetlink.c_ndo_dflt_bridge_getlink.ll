; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_bridge_getlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_ndo_dflt_bridge_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i64, i64, i32, i64, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.ifinfomsg = type { i64, i64, i32, i32, i64, i32 }
%struct.nlattr = type { i32 }

@IF_OPER_DOWN = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_OPERSTATE = common dso_local global i32 0, align 4
@IFLA_MASTER = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i32 0, align 4
@IFLA_AF_SPEC = common dso_local global i32 0, align 4
@IFLA_BRIDGE_FLAGS = common dso_local global i32 0, align 4
@BRIDGE_FLAGS_SELF = common dso_local global i64 0, align 8
@BRIDGE_MODE_UNDEF = common dso_local global i64 0, align 8
@IFLA_BRIDGE_MODE = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@IFLA_BRPORT_MODE = common dso_local global i32 0, align 4
@BR_HAIRPIN_MODE = common dso_local global i32 0, align 4
@IFLA_BRPORT_GUARD = common dso_local global i32 0, align 4
@BR_BPDU_GUARD = common dso_local global i32 0, align 4
@IFLA_BRPORT_FAST_LEAVE = common dso_local global i32 0, align 4
@BR_MULTICAST_FAST_LEAVE = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROTECT = common dso_local global i32 0, align 4
@BR_ROOT_BLOCK = common dso_local global i32 0, align 4
@IFLA_BRPORT_LEARNING = common dso_local global i32 0, align 4
@BR_LEARNING = common dso_local global i32 0, align 4
@IFLA_BRPORT_LEARNING_SYNC = common dso_local global i32 0, align 4
@BR_LEARNING_SYNC = common dso_local global i32 0, align 4
@IFLA_BRPORT_UNICAST_FLOOD = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROXYARP = common dso_local global i32 0, align 4
@BR_PROXYARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndo_dflt_bridge_getlink(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.net_device* %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 (%struct.sk_buff*, %struct.net_device*, i32)* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32 (%struct.sk_buff*, %struct.net_device*, i32)*, align 8
  %22 = alloca %struct.nlmsghdr*, align 8
  %23 = alloca %struct.ifinfomsg*, align 8
  %24 = alloca %struct.nlattr*, align 8
  %25 = alloca %struct.nlattr*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.net_device*, align 8
  %28 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.net_device* %3, %struct.net_device** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 (%struct.sk_buff*, %struct.net_device*, i32)* %9, i32 (%struct.sk_buff*, %struct.net_device*, i32)** %21, align 8
  %29 = load %struct.net_device*, %struct.net_device** %15, align 8
  %30 = call i64 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %10
  %33 = load %struct.net_device*, %struct.net_device** %15, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  br label %38

36:                                               ; preds = %10
  %37 = load i32, i32* @IF_OPER_DOWN, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %35, %32 ], [ %37, %36 ]
  store i32 %39, i32* %26, align 4
  %40 = load %struct.net_device*, %struct.net_device** %15, align 8
  %41 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %40)
  store %struct.net_device* %41, %struct.net_device** %27, align 8
  store i32 0, i32* %28, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @RTM_NEWLINK, align 4
  %46 = load i32, i32* %19, align 4
  %47 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %42, i32 %43, i32 %44, i32 %45, i32 40, i32 %46)
  store %struct.nlmsghdr* %47, %struct.nlmsghdr** %22, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %49 = icmp eq %struct.nlmsghdr* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %286

53:                                               ; preds = %38
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %55 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %54)
  store %struct.ifinfomsg* %55, %struct.ifinfomsg** %23, align 8
  %56 = load i32, i32* @AF_BRIDGE, align 4
  %57 = load %struct.ifinfomsg*, %struct.ifinfomsg** %23, align 8
  %58 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ifinfomsg*, %struct.ifinfomsg** %23, align 8
  %60 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %15, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ifinfomsg*, %struct.ifinfomsg** %23, align 8
  %65 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.net_device*, %struct.net_device** %15, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ifinfomsg*, %struct.ifinfomsg** %23, align 8
  %70 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %15, align 8
  %72 = call i32 @dev_get_flags(%struct.net_device* %71)
  %73 = load %struct.ifinfomsg*, %struct.ifinfomsg** %23, align 8
  %74 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ifinfomsg*, %struct.ifinfomsg** %23, align 8
  %76 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %78 = load i32, i32* @IFLA_IFNAME, align 4
  %79 = load %struct.net_device*, %struct.net_device** %15, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @nla_put_string(%struct.sk_buff* %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %139, label %84

84:                                               ; preds = %53
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = load i32, i32* @IFLA_MTU, align 4
  %87 = load %struct.net_device*, %struct.net_device** %15, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @nla_put_u32(%struct.sk_buff* %85, i32 %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %139, label %92

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = load i32, i32* @IFLA_OPERSTATE, align 4
  %95 = load i32, i32* %26, align 4
  %96 = call i64 @nla_put_u8(%struct.sk_buff* %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %139, label %98

98:                                               ; preds = %92
  %99 = load %struct.net_device*, %struct.net_device** %27, align 8
  %100 = icmp ne %struct.net_device* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = load i32, i32* @IFLA_MASTER, align 4
  %104 = load %struct.net_device*, %struct.net_device** %27, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @nla_put_u32(%struct.sk_buff* %102, i32 %103, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %139, label %109

109:                                              ; preds = %101, %98
  %110 = load %struct.net_device*, %struct.net_device** %15, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = load i32, i32* @IFLA_ADDRESS, align 4
  %117 = load %struct.net_device*, %struct.net_device** %15, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.net_device*, %struct.net_device** %15, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @nla_put(%struct.sk_buff* %115, i32 %116, i64 %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %114, %109
  %126 = load %struct.net_device*, %struct.net_device** %15, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.net_device*, %struct.net_device** %15, align 8
  %130 = call i64 @dev_get_iflink(%struct.net_device* %129)
  %131 = icmp ne i64 %128, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = load i32, i32* @IFLA_LINK, align 4
  %135 = load %struct.net_device*, %struct.net_device** %15, align 8
  %136 = call i64 @dev_get_iflink(%struct.net_device* %135)
  %137 = call i64 @nla_put_u32(%struct.sk_buff* %133, i32 %134, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132, %114, %101, %92, %84, %53
  br label %273

140:                                              ; preds = %132, %125
  %141 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %142 = load i32, i32* @IFLA_AF_SPEC, align 4
  %143 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %141, i32 %142)
  store %struct.nlattr* %143, %struct.nlattr** %24, align 8
  %144 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %145 = icmp ne %struct.nlattr* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  br label %273

147:                                              ; preds = %140
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = load i32, i32* @IFLA_BRIDGE_FLAGS, align 4
  %150 = load i64, i64* @BRIDGE_FLAGS_SELF, align 8
  %151 = call i64 @nla_put_u16(%struct.sk_buff* %148, i32 %149, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %155 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %156 = call i32 @nla_nest_cancel(%struct.sk_buff* %154, %struct.nlattr* %155)
  br label %273

157:                                              ; preds = %147
  %158 = load i64, i64* %16, align 8
  %159 = load i64, i64* @BRIDGE_MODE_UNDEF, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %157
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = load i32, i32* @IFLA_BRIDGE_MODE, align 4
  %164 = load i64, i64* %16, align 8
  %165 = call i64 @nla_put_u16(%struct.sk_buff* %162, i32 %163, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %170 = call i32 @nla_nest_cancel(%struct.sk_buff* %168, %struct.nlattr* %169)
  br label %273

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %157
  %173 = load i32 (%struct.sk_buff*, %struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32)** %21, align 8
  %174 = icmp ne i32 (%struct.sk_buff*, %struct.net_device*, i32)* %173, null
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load i32 (%struct.sk_buff*, %struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32)** %21, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %178 = load %struct.net_device*, %struct.net_device** %15, align 8
  %179 = load i32, i32* %20, align 4
  %180 = call i32 %176(%struct.sk_buff* %177, %struct.net_device* %178, i32 %179)
  store i32 %180, i32* %28, align 4
  %181 = load i32, i32* %28, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %185 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %186 = call i32 @nla_nest_cancel(%struct.sk_buff* %184, %struct.nlattr* %185)
  br label %273

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187, %172
  %189 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %190 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %191 = call i32 @nla_nest_end(%struct.sk_buff* %189, %struct.nlattr* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %193 = load i32, i32* @IFLA_PROTINFO, align 4
  %194 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %192, i32 %193)
  store %struct.nlattr* %194, %struct.nlattr** %25, align 8
  %195 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %196 = icmp ne %struct.nlattr* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %188
  br label %273

198:                                              ; preds = %188
  %199 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* @IFLA_BRPORT_MODE, align 4
  %203 = load i32, i32* @BR_HAIRPIN_MODE, align 4
  %204 = call i64 @brport_nla_put_flag(%struct.sk_buff* %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %262, label %206

206:                                              ; preds = %198
  %207 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* @IFLA_BRPORT_GUARD, align 4
  %211 = load i32, i32* @BR_BPDU_GUARD, align 4
  %212 = call i64 @brport_nla_put_flag(%struct.sk_buff* %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %262, label %214

214:                                              ; preds = %206
  %215 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %18, align 4
  %218 = load i32, i32* @IFLA_BRPORT_FAST_LEAVE, align 4
  %219 = load i32, i32* @BR_MULTICAST_FAST_LEAVE, align 4
  %220 = call i64 @brport_nla_put_flag(%struct.sk_buff* %215, i32 %216, i32 %217, i32 %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %262, label %222

222:                                              ; preds = %214
  %223 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* @IFLA_BRPORT_PROTECT, align 4
  %227 = load i32, i32* @BR_ROOT_BLOCK, align 4
  %228 = call i64 @brport_nla_put_flag(%struct.sk_buff* %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %262, label %230

230:                                              ; preds = %222
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @IFLA_BRPORT_LEARNING, align 4
  %235 = load i32, i32* @BR_LEARNING, align 4
  %236 = call i64 @brport_nla_put_flag(%struct.sk_buff* %231, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %262, label %238

238:                                              ; preds = %230
  %239 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* @IFLA_BRPORT_LEARNING_SYNC, align 4
  %243 = load i32, i32* @BR_LEARNING_SYNC, align 4
  %244 = call i64 @brport_nla_put_flag(%struct.sk_buff* %239, i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %238
  %247 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* @IFLA_BRPORT_UNICAST_FLOOD, align 4
  %251 = load i32, i32* @BR_FLOOD, align 4
  %252 = call i64 @brport_nla_put_flag(%struct.sk_buff* %247, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %262, label %254

254:                                              ; preds = %246
  %255 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* @IFLA_BRPORT_PROXYARP, align 4
  %259 = load i32, i32* @BR_PROXYARP, align 4
  %260 = call i64 @brport_nla_put_flag(%struct.sk_buff* %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %254, %246, %238, %230, %222, %214, %206, %198
  %263 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %264 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %265 = call i32 @nla_nest_cancel(%struct.sk_buff* %263, %struct.nlattr* %264)
  br label %273

266:                                              ; preds = %254
  %267 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %268 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %269 = call i32 @nla_nest_end(%struct.sk_buff* %267, %struct.nlattr* %268)
  %270 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %271 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %272 = call i32 @nlmsg_end(%struct.sk_buff* %270, %struct.nlmsghdr* %271)
  store i32 0, i32* %11, align 4
  br label %286

273:                                              ; preds = %262, %197, %183, %167, %153, %146, %139
  %274 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %275 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %276 = call i32 @nlmsg_cancel(%struct.sk_buff* %274, %struct.nlmsghdr* %275)
  %277 = load i32, i32* %28, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %273
  %280 = load i32, i32* %28, align 4
  br label %284

281:                                              ; preds = %273
  %282 = load i32, i32* @EMSGSIZE, align 4
  %283 = sub nsw i32 0, %282
  br label %284

284:                                              ; preds = %281, %279
  %285 = phi i32 [ %280, %279 ], [ %283, %281 ]
  store i32 %285, i32* %11, align 4
  br label %286

286:                                              ; preds = %284, %266, %50
  %287 = load i32, i32* %11, align 4
  ret i32 %287
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @dev_get_iflink(%struct.net_device*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @brport_nla_put_flag(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
