; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_fill_ifinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_fill_ifinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_bridge_port = type { i32, %struct.net_bridge* }
%struct.net_bridge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.net_device = type { i64, i64, i32, i64, i32, i32, i32 }
%struct.ifinfomsg = type { i64, i64, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }

@IF_OPER_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"br_fill_info event %d port %s master %s\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@IFLA_MASTER = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_OPERSTATE = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@RTEXT_FILTER_BRVLAN = common dso_local global i32 0, align 4
@RTEXT_FILTER_BRVLAN_COMPRESSED = common dso_local global i32 0, align 4
@IFLA_AF_SPEC = common dso_local global i32 0, align 4
@BR_VLAN_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_bridge_port*, i32, i32, i32, i32, i32, %struct.net_device*)* @br_fill_ifinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_fill_ifinfo(%struct.sk_buff* %0, %struct.net_bridge_port* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.net_device* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_bridge_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.net_bridge*, align 8
  %20 = alloca %struct.ifinfomsg*, align 8
  %21 = alloca %struct.nlmsghdr*, align 8
  %22 = alloca %struct.nlattr*, align 8
  %23 = alloca %struct.net_bridge_vlan_group*, align 8
  %24 = alloca %struct.nlattr*, align 8
  %25 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.net_device* %7, %struct.net_device** %17, align 8
  %26 = load %struct.net_device*, %struct.net_device** %17, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load %struct.net_device*, %struct.net_device** %17, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  br label %35

33:                                               ; preds = %8
  %34 = load i32, i32* @IF_OPER_DOWN, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %34, %33 ]
  store i32 %36, i32* %18, align 4
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %38 = icmp ne %struct.net_bridge_port* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %41 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %40, i32 0, i32 1
  %42 = load %struct.net_bridge*, %struct.net_bridge** %41, align 8
  store %struct.net_bridge* %42, %struct.net_bridge** %19, align 8
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.net_device*, %struct.net_device** %17, align 8
  %45 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %44)
  store %struct.net_bridge* %45, %struct.net_bridge** %19, align 8
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.net_bridge*, %struct.net_bridge** %19, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.net_device*, %struct.net_device** %17, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.net_bridge*, %struct.net_bridge** %19, align 8
  %53 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @br_debug(%struct.net_bridge* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %58, i32 %59, i32 %60, i32 %61, i32 40, i32 %62)
  store %struct.nlmsghdr* %63, %struct.nlmsghdr** %21, align 8
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %65 = icmp eq %struct.nlmsghdr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %46
  %67 = load i32, i32* @EMSGSIZE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %263

69:                                               ; preds = %46
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %71 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %70)
  store %struct.ifinfomsg* %71, %struct.ifinfomsg** %20, align 8
  %72 = load i32, i32* @AF_BRIDGE, align 4
  %73 = load %struct.ifinfomsg*, %struct.ifinfomsg** %20, align 8
  %74 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ifinfomsg*, %struct.ifinfomsg** %20, align 8
  %76 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.net_device*, %struct.net_device** %17, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ifinfomsg*, %struct.ifinfomsg** %20, align 8
  %81 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.net_device*, %struct.net_device** %17, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ifinfomsg*, %struct.ifinfomsg** %20, align 8
  %86 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %17, align 8
  %88 = call i32 @dev_get_flags(%struct.net_device* %87)
  %89 = load %struct.ifinfomsg*, %struct.ifinfomsg** %20, align 8
  %90 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ifinfomsg*, %struct.ifinfomsg** %20, align 8
  %92 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = load i32, i32* @IFLA_IFNAME, align 4
  %95 = load %struct.net_device*, %struct.net_device** %17, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @nla_put_string(%struct.sk_buff* %93, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %154, label %100

100:                                              ; preds = %69
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load i32, i32* @IFLA_MASTER, align 4
  %103 = load %struct.net_bridge*, %struct.net_bridge** %19, align 8
  %104 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @nla_put_u32(%struct.sk_buff* %101, i32 %102, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %154, label %110

110:                                              ; preds = %100
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = load i32, i32* @IFLA_MTU, align 4
  %113 = load %struct.net_device*, %struct.net_device** %17, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @nla_put_u32(%struct.sk_buff* %111, i32 %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %154, label %118

118:                                              ; preds = %110
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = load i32, i32* @IFLA_OPERSTATE, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call i64 @nla_put_u8(%struct.sk_buff* %119, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %154, label %124

124:                                              ; preds = %118
  %125 = load %struct.net_device*, %struct.net_device** %17, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = load i32, i32* @IFLA_ADDRESS, align 4
  %132 = load %struct.net_device*, %struct.net_device** %17, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_device*, %struct.net_device** %17, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @nla_put(%struct.sk_buff* %130, i32 %131, i64 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %129, %124
  %141 = load %struct.net_device*, %struct.net_device** %17, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.net_device*, %struct.net_device** %17, align 8
  %145 = call i64 @dev_get_iflink(%struct.net_device* %144)
  %146 = icmp ne i64 %143, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %140
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %149 = load i32, i32* @IFLA_LINK, align 4
  %150 = load %struct.net_device*, %struct.net_device** %17, align 8
  %151 = call i64 @dev_get_iflink(%struct.net_device* %150)
  %152 = call i64 @nla_put_u32(%struct.sk_buff* %148, i32 %149, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147, %129, %118, %110, %100, %69
  br label %257

155:                                              ; preds = %147, %140
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @RTM_NEWLINK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %161 = icmp ne %struct.net_bridge_port* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = load i32, i32* @IFLA_PROTINFO, align 4
  %165 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %163, i32 %164)
  store %struct.nlattr* %165, %struct.nlattr** %22, align 8
  %166 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %167 = icmp eq %struct.nlattr* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %170 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %171 = call i64 @br_port_fill_attrs(%struct.sk_buff* %169, %struct.net_bridge_port* %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %162
  br label %257

174:                                              ; preds = %168
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %177 = call i32 @nla_nest_end(%struct.sk_buff* %175, %struct.nlattr* %176)
  br label %178

178:                                              ; preds = %174, %159, %155
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* @RTEXT_FILTER_BRVLAN, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* @RTEXT_FILTER_BRVLAN_COMPRESSED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %252

188:                                              ; preds = %183, %178
  %189 = call i32 (...) @rcu_read_lock()
  %190 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %191 = icmp ne %struct.net_bridge_port* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %194 = call %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port* %193)
  store %struct.net_bridge_vlan_group* %194, %struct.net_bridge_vlan_group** %23, align 8
  br label %198

195:                                              ; preds = %188
  %196 = load %struct.net_bridge*, %struct.net_bridge** %19, align 8
  %197 = call %struct.net_bridge_vlan_group* @br_vlan_group_rcu(%struct.net_bridge* %196)
  store %struct.net_bridge_vlan_group* %197, %struct.net_bridge_vlan_group** %23, align 8
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %23, align 8
  %200 = icmp ne %struct.net_bridge_vlan_group* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %23, align 8
  %203 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %201, %198
  %207 = call i32 (...) @rcu_read_unlock()
  br label %253

208:                                              ; preds = %201
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = load i32, i32* @IFLA_AF_SPEC, align 4
  %211 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %209, i32 %210)
  store %struct.nlattr* %211, %struct.nlattr** %24, align 8
  %212 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %213 = icmp ne %struct.nlattr* %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %208
  %215 = call i32 (...) @rcu_read_unlock()
  br label %257

216:                                              ; preds = %208
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* @RTEXT_FILTER_BRVLAN_COMPRESSED, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %223 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %23, align 8
  %224 = call i32 @br_fill_ifvlaninfo_compressed(%struct.sk_buff* %222, %struct.net_bridge_vlan_group* %223)
  store i32 %224, i32* %25, align 4
  br label %229

225:                                              ; preds = %216
  %226 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %227 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %23, align 8
  %228 = call i32 @br_fill_ifvlaninfo(%struct.sk_buff* %226, %struct.net_bridge_vlan_group* %227)
  store i32 %228, i32* %25, align 4
  br label %229

229:                                              ; preds = %225, %221
  %230 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %231 = icmp ne %struct.net_bridge_port* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %234 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %241 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %23, align 8
  %242 = call i32 @br_fill_vlan_tunnel_info(%struct.sk_buff* %240, %struct.net_bridge_vlan_group* %241)
  store i32 %242, i32* %25, align 4
  br label %243

243:                                              ; preds = %239, %232, %229
  %244 = call i32 (...) @rcu_read_unlock()
  %245 = load i32, i32* %25, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %257

248:                                              ; preds = %243
  %249 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %250 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %251 = call i32 @nla_nest_end(%struct.sk_buff* %249, %struct.nlattr* %250)
  br label %252

252:                                              ; preds = %248, %183
  br label %253

253:                                              ; preds = %252, %206
  %254 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %255 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %256 = call i32 @nlmsg_end(%struct.sk_buff* %254, %struct.nlmsghdr* %255)
  store i32 0, i32* %9, align 4
  br label %263

257:                                              ; preds = %247, %214, %173, %154
  %258 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %259 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  %260 = call i32 @nlmsg_cancel(%struct.sk_buff* %258, %struct.nlmsghdr* %259)
  %261 = load i32, i32* @EMSGSIZE, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %9, align 4
  br label %263

263:                                              ; preds = %257, %253, %66
  %264 = load i32, i32* %9, align 4
  ret i32 %264
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*, i32, i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @dev_get_iflink(%struct.net_device*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @br_port_fill_attrs(%struct.sk_buff*, %struct.net_bridge_port*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local %struct.net_bridge_vlan_group* @br_vlan_group_rcu(%struct.net_bridge*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @br_fill_ifvlaninfo_compressed(%struct.sk_buff*, %struct.net_bridge_vlan_group*) #1

declare dso_local i32 @br_fill_ifvlaninfo(%struct.sk_buff*, %struct.net_bridge_vlan_group*) #1

declare dso_local i32 @br_fill_vlan_tunnel_info(%struct.sk_buff*, %struct.net_bridge_vlan_group*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
