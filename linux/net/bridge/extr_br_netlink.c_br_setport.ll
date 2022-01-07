; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_setport.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }

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
@IFLA_BRPORT_UNICAST_FLOOD = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_MCAST_FLOOD = common dso_local global i32 0, align 4
@BR_MCAST_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_MCAST_TO_UCAST = common dso_local global i32 0, align 4
@BR_MULTICAST_TO_UNICAST = common dso_local global i32 0, align 4
@IFLA_BRPORT_BCAST_FLOOD = common dso_local global i32 0, align 4
@BR_BCAST_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROXYARP = common dso_local global i32 0, align 4
@BR_PROXYARP = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROXYARP_WIFI = common dso_local global i32 0, align 4
@BR_PROXYARP_WIFI = common dso_local global i32 0, align 4
@BR_VLAN_TUNNEL = common dso_local global i32 0, align 4
@IFLA_BRPORT_VLAN_TUNNEL = common dso_local global i32 0, align 4
@IFLA_BRPORT_COST = common dso_local global i64 0, align 8
@IFLA_BRPORT_PRIORITY = common dso_local global i64 0, align 8
@IFLA_BRPORT_STATE = common dso_local global i64 0, align 8
@IFLA_BRPORT_FLUSH = common dso_local global i64 0, align 8
@IFLA_BRPORT_GROUP_FWD_MASK = common dso_local global i64 0, align 8
@BR_GROUPFWD_MACPAUSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFLA_BRPORT_NEIGH_SUPPRESS = common dso_local global i32 0, align 4
@BR_NEIGH_SUPPRESS = common dso_local global i32 0, align 4
@IFLA_BRPORT_ISOLATED = common dso_local global i32 0, align 4
@BR_ISOLATED = common dso_local global i32 0, align 4
@IFLA_BRPORT_BACKUP_PORT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IFLA_BRPORT_MULTICAST_ROUTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, %struct.nlattr**)* @br_setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_setport(%struct.net_bridge_port* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i64, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i32, i32* @IFLA_BRPORT_MODE, align 4
  %18 = load i32, i32* @BR_HAIRPIN_MODE, align 4
  %19 = call i32 @br_set_port_flag(%struct.net_bridge_port* %15, %struct.nlattr** %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %313

24:                                               ; preds = %2
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %26 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %27 = load i32, i32* @IFLA_BRPORT_GUARD, align 4
  %28 = load i32, i32* @BR_BPDU_GUARD, align 4
  %29 = call i32 @br_set_port_flag(%struct.net_bridge_port* %25, %struct.nlattr** %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %313

34:                                               ; preds = %24
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %37 = load i32, i32* @IFLA_BRPORT_FAST_LEAVE, align 4
  %38 = load i32, i32* @BR_MULTICAST_FAST_LEAVE, align 4
  %39 = call i32 @br_set_port_flag(%struct.net_bridge_port* %35, %struct.nlattr** %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %313

44:                                               ; preds = %34
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %46 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %47 = load i32, i32* @IFLA_BRPORT_PROTECT, align 4
  %48 = load i32, i32* @BR_ROOT_BLOCK, align 4
  %49 = call i32 @br_set_port_flag(%struct.net_bridge_port* %45, %struct.nlattr** %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %313

54:                                               ; preds = %44
  %55 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %57 = load i32, i32* @IFLA_BRPORT_LEARNING, align 4
  %58 = load i32, i32* @BR_LEARNING, align 4
  %59 = call i32 @br_set_port_flag(%struct.net_bridge_port* %55, %struct.nlattr** %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %313

64:                                               ; preds = %54
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %66 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %67 = load i32, i32* @IFLA_BRPORT_UNICAST_FLOOD, align 4
  %68 = load i32, i32* @BR_FLOOD, align 4
  %69 = call i32 @br_set_port_flag(%struct.net_bridge_port* %65, %struct.nlattr** %66, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %313

74:                                               ; preds = %64
  %75 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %76 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %77 = load i32, i32* @IFLA_BRPORT_MCAST_FLOOD, align 4
  %78 = load i32, i32* @BR_MCAST_FLOOD, align 4
  %79 = call i32 @br_set_port_flag(%struct.net_bridge_port* %75, %struct.nlattr** %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %313

84:                                               ; preds = %74
  %85 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %86 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %87 = load i32, i32* @IFLA_BRPORT_MCAST_TO_UCAST, align 4
  %88 = load i32, i32* @BR_MULTICAST_TO_UNICAST, align 4
  %89 = call i32 @br_set_port_flag(%struct.net_bridge_port* %85, %struct.nlattr** %86, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %313

94:                                               ; preds = %84
  %95 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %96 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %97 = load i32, i32* @IFLA_BRPORT_BCAST_FLOOD, align 4
  %98 = load i32, i32* @BR_BCAST_FLOOD, align 4
  %99 = call i32 @br_set_port_flag(%struct.net_bridge_port* %95, %struct.nlattr** %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %313

104:                                              ; preds = %94
  %105 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %106 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %107 = load i32, i32* @IFLA_BRPORT_PROXYARP, align 4
  %108 = load i32, i32* @BR_PROXYARP, align 4
  %109 = call i32 @br_set_port_flag(%struct.net_bridge_port* %105, %struct.nlattr** %106, i32 %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %313

114:                                              ; preds = %104
  %115 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %116 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %117 = load i32, i32* @IFLA_BRPORT_PROXYARP_WIFI, align 4
  %118 = load i32, i32* @BR_PROXYARP_WIFI, align 4
  %119 = call i32 @br_set_port_flag(%struct.net_bridge_port* %115, %struct.nlattr** %116, i32 %117, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %313

124:                                              ; preds = %114
  %125 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %126 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 %127, %129
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  store i32 %133, i32* %7, align 4
  %134 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %135 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %136 = load i32, i32* @IFLA_BRPORT_VLAN_TUNNEL, align 4
  %137 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %138 = call i32 @br_set_port_flag(%struct.net_bridge_port* %134, %struct.nlattr** %135, i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %124
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %313

143:                                              ; preds = %124
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %143
  %147 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %148 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %151 = sext i32 %150 to i64
  %152 = and i64 %149, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %146
  %155 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %156 = call i32 @nbp_vlan_tunnel_info_flush(%struct.net_bridge_port* %155)
  br label %157

157:                                              ; preds = %154, %146, %143
  %158 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %159 = load i64, i64* @IFLA_BRPORT_COST, align 8
  %160 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %158, i64 %159
  %161 = load %struct.nlattr*, %struct.nlattr** %160, align 8
  %162 = icmp ne %struct.nlattr* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %157
  %164 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %165 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %166 = load i64, i64* @IFLA_BRPORT_COST, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i64 @nla_get_u32(%struct.nlattr* %168)
  %170 = call i32 @br_stp_set_path_cost(%struct.net_bridge_port* %164, i64 %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %3, align 4
  br label %313

175:                                              ; preds = %163
  br label %176

176:                                              ; preds = %175, %157
  %177 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %178 = load i64, i64* @IFLA_BRPORT_PRIORITY, align 8
  %179 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %177, i64 %178
  %180 = load %struct.nlattr*, %struct.nlattr** %179, align 8
  %181 = icmp ne %struct.nlattr* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %176
  %183 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %184 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %185 = load i64, i64* @IFLA_BRPORT_PRIORITY, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %184, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = call i32 @nla_get_u16(%struct.nlattr* %187)
  %189 = call i32 @br_stp_set_port_priority(%struct.net_bridge_port* %183, i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %182
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %3, align 4
  br label %313

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %176
  %196 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %197 = load i64, i64* @IFLA_BRPORT_STATE, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %196, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = icmp ne %struct.nlattr* %199, null
  br i1 %200, label %201, label %214

201:                                              ; preds = %195
  %202 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %203 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %204 = load i64, i64* @IFLA_BRPORT_STATE, align 8
  %205 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %203, i64 %204
  %206 = load %struct.nlattr*, %struct.nlattr** %205, align 8
  %207 = call i32 @nla_get_u8(%struct.nlattr* %206)
  %208 = call i32 @br_set_port_state(%struct.net_bridge_port* %202, i32 %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %201
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %3, align 4
  br label %313

213:                                              ; preds = %201
  br label %214

214:                                              ; preds = %213, %195
  %215 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %216 = load i64, i64* @IFLA_BRPORT_FLUSH, align 8
  %217 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %215, i64 %216
  %218 = load %struct.nlattr*, %struct.nlattr** %217, align 8
  %219 = icmp ne %struct.nlattr* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %222 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %225 = call i32 @br_fdb_delete_by_port(i32 %223, %struct.net_bridge_port* %224, i32 0, i32 0)
  br label %226

226:                                              ; preds = %220, %214
  %227 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %228 = load i64, i64* @IFLA_BRPORT_GROUP_FWD_MASK, align 8
  %229 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %227, i64 %228
  %230 = load %struct.nlattr*, %struct.nlattr** %229, align 8
  %231 = icmp ne %struct.nlattr* %230, null
  br i1 %231, label %232, label %249

232:                                              ; preds = %226
  %233 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %234 = load i64, i64* @IFLA_BRPORT_GROUP_FWD_MASK, align 8
  %235 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %233, i64 %234
  %236 = load %struct.nlattr*, %struct.nlattr** %235, align 8
  %237 = call i32 @nla_get_u16(%struct.nlattr* %236)
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @BR_GROUPFWD_MACPAUSE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %232
  %243 = load i32, i32* @EINVAL, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %3, align 4
  br label %313

245:                                              ; preds = %232
  %246 = load i32, i32* %9, align 4
  %247 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %248 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %245, %226
  %250 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %251 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %252 = load i32, i32* @IFLA_BRPORT_NEIGH_SUPPRESS, align 4
  %253 = load i32, i32* @BR_NEIGH_SUPPRESS, align 4
  %254 = call i32 @br_set_port_flag(%struct.net_bridge_port* %250, %struct.nlattr** %251, i32 %252, i32 %253)
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %8, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %249
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %3, align 4
  br label %313

259:                                              ; preds = %249
  %260 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %261 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %262 = load i32, i32* @IFLA_BRPORT_ISOLATED, align 4
  %263 = load i32, i32* @BR_ISOLATED, align 4
  %264 = call i32 @br_set_port_flag(%struct.net_bridge_port* %260, %struct.nlattr** %261, i32 %262, i32 %263)
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %259
  %268 = load i32, i32* %8, align 4
  store i32 %268, i32* %3, align 4
  br label %313

269:                                              ; preds = %259
  %270 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %271 = load i64, i64* @IFLA_BRPORT_BACKUP_PORT, align 8
  %272 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %270, i64 %271
  %273 = load %struct.nlattr*, %struct.nlattr** %272, align 8
  %274 = icmp ne %struct.nlattr* %273, null
  br i1 %274, label %275, label %305

275:                                              ; preds = %269
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %276 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %277 = load i64, i64* @IFLA_BRPORT_BACKUP_PORT, align 8
  %278 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %276, i64 %277
  %279 = load %struct.nlattr*, %struct.nlattr** %278, align 8
  %280 = call i64 @nla_get_u32(%struct.nlattr* %279)
  store i64 %280, i64* %11, align 8
  %281 = load i64, i64* %11, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %275
  %284 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %285 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @dev_net(i32 %286)
  %288 = load i64, i64* %11, align 8
  %289 = call %struct.net_device* @__dev_get_by_index(i32 %287, i64 %288)
  store %struct.net_device* %289, %struct.net_device** %10, align 8
  %290 = load %struct.net_device*, %struct.net_device** %10, align 8
  %291 = icmp ne %struct.net_device* %290, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %283
  %293 = load i32, i32* @ENOENT, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %3, align 4
  br label %313

295:                                              ; preds = %283
  br label %296

296:                                              ; preds = %295, %275
  %297 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %298 = load %struct.net_device*, %struct.net_device** %10, align 8
  %299 = call i32 @nbp_backup_change(%struct.net_bridge_port* %297, %struct.net_device* %298)
  store i32 %299, i32* %8, align 4
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = load i32, i32* %8, align 4
  store i32 %303, i32* %3, align 4
  br label %313

304:                                              ; preds = %296
  br label %305

305:                                              ; preds = %304, %269
  %306 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %307 = load i64, i64* %6, align 8
  %308 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %309 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = xor i64 %307, %310
  %312 = call i32 @br_port_flags_change(%struct.net_bridge_port* %306, i64 %311)
  store i32 0, i32* %3, align 4
  br label %313

313:                                              ; preds = %305, %302, %292, %267, %257, %242, %211, %192, %173, %141, %122, %112, %102, %92, %82, %72, %62, %52, %42, %32, %22
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i32 @br_set_port_flag(%struct.net_bridge_port*, %struct.nlattr**, i32, i32) #1

declare dso_local i32 @nbp_vlan_tunnel_info_flush(%struct.net_bridge_port*) #1

declare dso_local i32 @br_stp_set_path_cost(%struct.net_bridge_port*, i64) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @br_stp_set_port_priority(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @br_set_port_state(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @br_fdb_delete_by_port(i32, %struct.net_bridge_port*, i32, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i64) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @nbp_backup_change(%struct.net_bridge_port*, %struct.net_device*) #1

declare dso_local i32 @br_port_flags_change(%struct.net_bridge_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
