; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netdev_notifier_pre_changeaddr_info = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IFF_EBRIDGE = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NET_ADDR_SET = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @br_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.netdev_notifier_pre_changeaddr_info*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.net_bridge_port*, align 8
  %12 = alloca %struct.net_bridge*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i8* %16)
  store %struct.netlink_ext_ack* %17, %struct.netlink_ext_ack** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %18)
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.net_device*, %struct.net_device** %10, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_EBRIDGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @br_vlan_bridge_event(%struct.net_device* %27, i64 %28, i8* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @notifier_from_errno(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %205

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @NETDEV_REGISTER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.net_device*, %struct.net_device** %10, align 8
  %42 = call i32 @br_sysfs_addbr(%struct.net_device* %41)
  %43 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %43, i32* %4, align 4
  br label %205

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.net_device*, %struct.net_device** %10, align 8
  %47 = call %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device* %46)
  store %struct.net_bridge_port* %47, %struct.net_bridge_port** %11, align 8
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %49 = icmp ne %struct.net_bridge_port* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %51, i32* %4, align 4
  br label %205

52:                                               ; preds = %45
  %53 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %54 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %53, i32 0, i32 0
  %55 = load %struct.net_bridge*, %struct.net_bridge** %54, align 8
  store %struct.net_bridge* %55, %struct.net_bridge** %12, align 8
  %56 = load i64, i64* %6, align 8
  switch i64 %56, label %177 [
    i64 136, label %57
    i64 132, label %60
    i64 137, label %86
    i64 138, label %108
    i64 133, label %111
    i64 134, label %116
    i64 128, label %135
    i64 129, label %155
    i64 135, label %159
    i64 131, label %168
    i64 130, label %170
  ]

57:                                               ; preds = %52
  %58 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %59 = call i32 @br_mtu_auto_adjust(%struct.net_bridge* %58)
  br label %177

60:                                               ; preds = %52
  %61 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %62 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NET_ADDR_SET, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %177

69:                                               ; preds = %60
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to %struct.netdev_notifier_pre_changeaddr_info*
  store %struct.netdev_notifier_pre_changeaddr_info* %71, %struct.netdev_notifier_pre_changeaddr_info** %9, align 8
  %72 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %73 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.netdev_notifier_pre_changeaddr_info*, %struct.netdev_notifier_pre_changeaddr_info** %9, align 8
  %76 = getelementptr inbounds %struct.netdev_notifier_pre_changeaddr_info, %struct.netdev_notifier_pre_changeaddr_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %79 = call i32 @dev_pre_changeaddr_notify(%struct.TYPE_5__* %74, i32 %77, %struct.netlink_ext_ack* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @notifier_from_errno(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %205

85:                                               ; preds = %69
  br label %177

86:                                               ; preds = %52
  %87 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %88 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %87, i32 0, i32 1
  %89 = call i32 @spin_lock_bh(i32* %88)
  %90 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %91 = load %struct.net_device*, %struct.net_device** %10, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @br_fdb_changeaddr(%struct.net_bridge_port* %90, i32 %93)
  %95 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %96 = call i32 @br_stp_recalculate_bridge_id(%struct.net_bridge* %95)
  store i32 %96, i32* %14, align 4
  %97 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %98 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock_bh(i32* %98)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %104 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = call i32 @call_netdevice_notifiers(i32 137, %struct.TYPE_5__* %105)
  br label %107

107:                                              ; preds = %102, %86
  br label %177

108:                                              ; preds = %52
  %109 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %110 = call i32 @br_port_carrier_check(%struct.net_bridge_port* %109, i32* %13)
  br label %177

111:                                              ; preds = %52
  %112 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %113 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = call i32 @netdev_update_features(%struct.TYPE_5__* %114)
  br label %177

116:                                              ; preds = %52
  %117 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %118 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %117, i32 0, i32 1
  %119 = call i32 @spin_lock_bh(i32* %118)
  %120 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %121 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IFF_UP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %130 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %129)
  store i32 1, i32* %13, align 4
  br label %131

131:                                              ; preds = %128, %116
  %132 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %133 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %132, i32 0, i32 1
  %134 = call i32 @spin_unlock_bh(i32* %133)
  br label %177

135:                                              ; preds = %52
  %136 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %137 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = call i32 @netif_running(%struct.TYPE_5__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.net_device*, %struct.net_device** %10, align 8
  %143 = call i32 @netif_oper_up(%struct.net_device* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %147 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %146, i32 0, i32 1
  %148 = call i32 @spin_lock_bh(i32* %147)
  %149 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %150 = call i32 @br_stp_enable_port(%struct.net_bridge_port* %149)
  store i32 1, i32* %13, align 4
  %151 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %152 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %151, i32 0, i32 1
  %153 = call i32 @spin_unlock_bh(i32* %152)
  br label %154

154:                                              ; preds = %145, %141, %135
  br label %177

155:                                              ; preds = %52
  %156 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %157 = load %struct.net_device*, %struct.net_device** %10, align 8
  %158 = call i32 @br_del_if(%struct.net_bridge* %156, %struct.net_device* %157)
  br label %177

159:                                              ; preds = %52
  %160 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %161 = call i32 @br_sysfs_renameif(%struct.net_bridge_port* %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @notifier_from_errno(i32 %165)
  store i32 %166, i32* %4, align 4
  br label %205

167:                                              ; preds = %159
  br label %177

168:                                              ; preds = %52
  %169 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %169, i32* %4, align 4
  br label %205

170:                                              ; preds = %52
  %171 = load i64, i64* %6, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.net_bridge*, %struct.net_bridge** %12, align 8
  %174 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = call i32 @call_netdevice_notifiers(i32 %172, %struct.TYPE_5__* %175)
  br label %177

177:                                              ; preds = %52, %170, %167, %155, %154, %131, %111, %108, %107, %85, %68, %57
  %178 = load i64, i64* %6, align 8
  %179 = icmp ne i64 %178, 129
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %182 = load i64, i64* %6, align 8
  %183 = call i32 @br_vlan_port_event(%struct.net_bridge_port* %181, i64 %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %13, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %203, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* %6, align 8
  %189 = icmp eq i64 %188, 137
  br i1 %189, label %199, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %6, align 8
  %192 = icmp eq i64 %191, 128
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load i64, i64* %6, align 8
  %195 = icmp eq i64 %194, 138
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* %6, align 8
  %198 = icmp eq i64 %197, 134
  br i1 %198, label %199, label %203

199:                                              ; preds = %196, %193, %190, %187
  %200 = load i32, i32* @RTM_NEWLINK, align 4
  %201 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %202 = call i32 @br_ifinfo_notify(i32 %200, i32* null, %struct.net_bridge_port* %201)
  br label %203

203:                                              ; preds = %199, %196, %184
  %204 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %203, %168, %164, %82, %50, %40, %33
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i8*) #1

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @br_vlan_bridge_event(%struct.net_device*, i64, i8*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @br_sysfs_addbr(%struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @br_mtu_auto_adjust(%struct.net_bridge*) #1

declare dso_local i32 @dev_pre_changeaddr_notify(%struct.TYPE_5__*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_fdb_changeaddr(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_stp_recalculate_bridge_id(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @br_port_carrier_check(%struct.net_bridge_port*, i32*) #1

declare dso_local i32 @netdev_update_features(%struct.TYPE_5__*) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @netif_running(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_oper_up(%struct.net_device*) #1

declare dso_local i32 @br_stp_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_del_if(%struct.net_bridge*, %struct.net_device*) #1

declare dso_local i32 @br_sysfs_renameif(%struct.net_bridge_port*) #1

declare dso_local i32 @br_vlan_port_event(%struct.net_bridge_port*, i64) #1

declare dso_local i32 @br_ifinfo_notify(i32, i32*, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
