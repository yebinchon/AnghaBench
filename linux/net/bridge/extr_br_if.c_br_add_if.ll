; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_add_if.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_add_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32, i64, i64, i32, i32, i64, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_bridge_port = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@br_dev_xmit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Can not enslave a bridge to a bridge\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFF_DONT_BRIDGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Device does not allow enslaving to a bridge\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETDEV_JOIN = common dso_local global i32 0, align 4
@brport_ktype = common dso_local global i32 0, align 4
@SYSFS_BRIDGE_PORT_ATTR = common dso_local global i32 0, align 4
@br_handle_frame = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"failed insert local address bridge forwarding table\0A\00", align 1
@NET_ADDR_SET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"failed to initialize vlan filtering on this port\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_add_if(%struct.net_bridge* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_LOOPBACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ARPHRD_ETHER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %41, label %25

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ETH_ALEN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @is_valid_ether_addr(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call i64 @netdev_uses_dsa(%struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %31, %25, %19, %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %318

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @br_dev_xmit, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %54 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ELOOP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %318

57:                                               ; preds = %44
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call i64 @netdev_master_upper_dev_get(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %318

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %73 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %318

76:                                               ; preds = %64
  %77 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = call %struct.net_bridge_port* @new_nbp(%struct.net_bridge* %77, %struct.net_device* %78)
  store %struct.net_bridge_port* %79, %struct.net_bridge_port** %8, align 8
  %80 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %81 = call i64 @IS_ERR(%struct.net_bridge_port* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %85 = call i32 @PTR_ERR(%struct.net_bridge_port* %84)
  store i32 %85, i32* %4, align 4
  br label %318

86:                                               ; preds = %76
  %87 = load i32, i32* @NETDEV_JOIN, align 4
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = call i32 @call_netdevice_notifiers(i32 %87, %struct.net_device* %88)
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = call i32 @dev_set_allmulti(%struct.net_device* %90, i32 1)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %96 = call i32 @kfree(%struct.net_bridge_port* %95)
  br label %314

97:                                               ; preds = %86
  %98 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %99 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %98, i32 0, i32 0
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* @SYSFS_BRIDGE_PORT_ATTR, align 4
  %104 = call i32 @kobject_init_and_add(i32* %99, i32* @brport_ktype, i32* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %308

108:                                              ; preds = %97
  %109 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %110 = call i32 @br_sysfs_addif(%struct.net_bridge_port* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %308

114:                                              ; preds = %108
  %115 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %116 = call i32 @br_netpoll_enable(%struct.net_bridge_port* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %298

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load i32, i32* @br_handle_frame, align 4
  %123 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %124 = call i32 @netdev_rx_handler_register(%struct.net_device* %121, i32 %122, %struct.net_bridge_port* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %295

128:                                              ; preds = %120
  %129 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.net_device*, %struct.net_device** %6, align 8
  %135 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %136 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %135, i32 0, i32 1
  %137 = load %struct.net_device*, %struct.net_device** %136, align 8
  %138 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %139 = call i32 @netdev_master_upper_dev_link(%struct.net_device* %134, %struct.net_device* %137, i32* null, i32* null, %struct.netlink_ext_ack* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %286

143:                                              ; preds = %128
  %144 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %145 = call i32 @nbp_switchdev_mark_set(%struct.net_bridge_port* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %280

149:                                              ; preds = %143
  %150 = load %struct.net_device*, %struct.net_device** %6, align 8
  %151 = call i32 @dev_disable_lro(%struct.net_device* %150)
  %152 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %153 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %152, i32 0, i32 2
  %154 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %155 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %154, i32 0, i32 3
  %156 = call i32 @list_add_rcu(i32* %153, i32* %155)
  %157 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %158 = call i32 @nbp_update_port_count(%struct.net_bridge* %157)
  %159 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %160 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %159, i32 0, i32 1
  %161 = load %struct.net_device*, %struct.net_device** %160, align 8
  %162 = call i32 @netdev_update_features(%struct.net_device* %161)
  %163 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %164 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %163, i32 0, i32 1
  %165 = load %struct.net_device*, %struct.net_device** %164, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %10, align 4
  %168 = load %struct.net_device*, %struct.net_device** %6, align 8
  %169 = call i32 @netdev_get_fwd_headroom(%struct.net_device* %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %149
  %174 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @update_headroom(%struct.net_bridge* %174, i32 %175)
  br label %181

177:                                              ; preds = %149
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @netdev_set_rx_headroom(%struct.net_device* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %173
  %182 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %183 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %184 = load %struct.net_device*, %struct.net_device** %6, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @br_fdb_insert(%struct.net_bridge* %182, %struct.net_bridge_port* %183, i32 %186, i32 0)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load %struct.net_device*, %struct.net_device** %6, align 8
  %191 = call i32 @netdev_err(%struct.net_device* %190, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %181
  %193 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %194 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %193, i32 0, i32 1
  %195 = load %struct.net_device*, %struct.net_device** %194, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @NET_ADDR_SET, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %192
  %201 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %202 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %201, i32 0, i32 1
  %203 = load %struct.net_device*, %struct.net_device** %202, align 8
  %204 = load %struct.net_device*, %struct.net_device** %6, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %208 = call i32 @dev_pre_changeaddr_notify(%struct.net_device* %203, i32 %206, %struct.netlink_ext_ack* %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %271

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212, %192
  %214 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %215 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %216 = call i32 @nbp_vlan_init(%struct.net_bridge_port* %214, %struct.netlink_ext_ack* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.net_device*, %struct.net_device** %6, align 8
  %221 = call i32 @netdev_err(%struct.net_device* %220, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %271

222:                                              ; preds = %213
  %223 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %224 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %223, i32 0, i32 2
  %225 = call i32 @spin_lock_bh(i32* %224)
  %226 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %227 = call i32 @br_stp_recalculate_bridge_id(%struct.net_bridge* %226)
  store i32 %227, i32* %12, align 4
  %228 = load %struct.net_device*, %struct.net_device** %6, align 8
  %229 = call i64 @netif_running(%struct.net_device* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %222
  %232 = load %struct.net_device*, %struct.net_device** %6, align 8
  %233 = call i64 @netif_oper_up(%struct.net_device* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %231
  %236 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %237 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %236, i32 0, i32 1
  %238 = load %struct.net_device*, %struct.net_device** %237, align 8
  %239 = getelementptr inbounds %struct.net_device, %struct.net_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @IFF_UP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %235
  %245 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %246 = call i32 @br_stp_enable_port(%struct.net_bridge_port* %245)
  br label %247

247:                                              ; preds = %244, %235, %231, %222
  %248 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %249 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %248, i32 0, i32 2
  %250 = call i32 @spin_unlock_bh(i32* %249)
  %251 = load i32, i32* @RTM_NEWLINK, align 4
  %252 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %253 = call i32 @br_ifinfo_notify(i32 %251, i32* null, %struct.net_bridge_port* %252)
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %247
  %257 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %258 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %259 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %258, i32 0, i32 1
  %260 = load %struct.net_device*, %struct.net_device** %259, align 8
  %261 = call i32 @call_netdevice_notifiers(i32 %257, %struct.net_device* %260)
  br label %262

262:                                              ; preds = %256, %247
  %263 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %264 = call i32 @br_mtu_auto_adjust(%struct.net_bridge* %263)
  %265 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %266 = call i32 @br_set_gso_limits(%struct.net_bridge* %265)
  %267 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %268 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %267, i32 0, i32 0
  %269 = load i32, i32* @KOBJ_ADD, align 4
  %270 = call i32 @kobject_uevent(i32* %268, i32 %269)
  store i32 0, i32* %4, align 4
  br label %318

271:                                              ; preds = %219, %211
  %272 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %273 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %272, i32 0, i32 2
  %274 = call i32 @list_del_rcu(i32* %273)
  %275 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %276 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %277 = call i32 @br_fdb_delete_by_port(%struct.net_bridge* %275, %struct.net_bridge_port* %276, i32 0, i32 1)
  %278 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %279 = call i32 @nbp_update_port_count(%struct.net_bridge* %278)
  br label %280

280:                                              ; preds = %271, %148
  %281 = load %struct.net_device*, %struct.net_device** %6, align 8
  %282 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %283 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %282, i32 0, i32 1
  %284 = load %struct.net_device*, %struct.net_device** %283, align 8
  %285 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %281, %struct.net_device* %284)
  br label %286

286:                                              ; preds = %280, %142
  %287 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %288 = xor i32 %287, -1
  %289 = load %struct.net_device*, %struct.net_device** %6, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = and i32 %291, %288
  store i32 %292, i32* %290, align 8
  %293 = load %struct.net_device*, %struct.net_device** %6, align 8
  %294 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %293)
  br label %295

295:                                              ; preds = %286, %127
  %296 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %297 = call i32 @br_netpoll_disable(%struct.net_bridge_port* %296)
  br label %298

298:                                              ; preds = %295, %119
  %299 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %300 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %303 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %302, i32 0, i32 1
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @sysfs_remove_link(i32 %301, i32 %306)
  br label %308

308:                                              ; preds = %298, %113, %107
  %309 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %310 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %309, i32 0, i32 0
  %311 = call i32 @kobject_put(i32* %310)
  %312 = load %struct.net_device*, %struct.net_device** %6, align 8
  %313 = call i32 @dev_set_allmulti(%struct.net_device* %312, i32 -1)
  br label %314

314:                                              ; preds = %308, %94
  %315 = load %struct.net_device*, %struct.net_device** %6, align 8
  %316 = call i32 @dev_put(%struct.net_device* %315)
  %317 = load i32, i32* %9, align 4
  store i32 %317, i32* %4, align 4
  br label %318

318:                                              ; preds = %314, %262, %83, %71, %61, %52, %41
  %319 = load i32, i32* %4, align 4
  ret i32 %319
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @netdev_uses_dsa(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @new_nbp(%struct.net_bridge*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.net_bridge_port*) #1

declare dso_local i32 @PTR_ERR(%struct.net_bridge_port*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @kfree(%struct.net_bridge_port*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i32) #1

declare dso_local i32 @br_sysfs_addif(%struct.net_bridge_port*) #1

declare dso_local i32 @br_netpoll_enable(%struct.net_bridge_port*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.net_bridge_port*) #1

declare dso_local i32 @netdev_master_upper_dev_link(%struct.net_device*, %struct.net_device*, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nbp_switchdev_mark_set(%struct.net_bridge_port*) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @nbp_update_port_count(%struct.net_bridge*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @netdev_get_fwd_headroom(%struct.net_device*) #1

declare dso_local i32 @update_headroom(%struct.net_bridge*, i32) #1

declare dso_local i32 @netdev_set_rx_headroom(%struct.net_device*, i32) #1

declare dso_local i64 @br_fdb_insert(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_pre_changeaddr_notify(%struct.net_device*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nbp_vlan_init(%struct.net_bridge_port*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_recalculate_bridge_id(%struct.net_bridge*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @br_stp_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_ifinfo_notify(i32, i32*, %struct.net_bridge_port*) #1

declare dso_local i32 @br_mtu_auto_adjust(%struct.net_bridge*) #1

declare dso_local i32 @br_set_gso_limits(%struct.net_bridge*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @br_fdb_delete_by_port(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @br_netpoll_disable(%struct.net_bridge_port*) #1

declare dso_local i32 @sysfs_remove_link(i32, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
