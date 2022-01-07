; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_change_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_change_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.vif_params = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@IFF_DONT_BRIDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_change_iface(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 139
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %215

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 133
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 136
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %215

32:                                               ; preds = %26
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39, %32
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %215

51:                                               ; preds = %39
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 141
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 131
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 134
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61, %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %215

70:                                               ; preds = %64, %51
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %125

74:                                               ; preds = %70
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %7, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @wdev_lock(%struct.TYPE_8__* %85)
  %87 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %88 = load %struct.net_device*, %struct.net_device** %7, align 8
  %89 = call i32 @rdev_set_qos_map(%struct.cfg80211_registered_device* %87, %struct.net_device* %88, i32* null)
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i32 @wdev_unlock(%struct.TYPE_8__* %92)
  %94 = load i32, i32* %11, align 4
  switch i32 %94, label %117 [
    i32 140, label %95
    i32 141, label %99
    i32 131, label %103
    i32 134, label %103
    i32 138, label %116
  ]

95:                                               ; preds = %74
  %96 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = call i32 @cfg80211_stop_ap(%struct.cfg80211_registered_device* %96, %struct.net_device* %97, i32 1)
  br label %118

99:                                               ; preds = %74
  %100 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %101 = load %struct.net_device*, %struct.net_device** %7, align 8
  %102 = call i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device* %100, %struct.net_device* %101, i32 0)
  br label %118

103:                                              ; preds = %74, %74
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @wdev_lock(%struct.TYPE_8__* %106)
  %108 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %109 = load %struct.net_device*, %struct.net_device** %7, align 8
  %110 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %111 = call i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %108, %struct.net_device* %109, i32 %110, i32 1)
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = call i32 @wdev_unlock(%struct.TYPE_8__* %114)
  br label %118

116:                                              ; preds = %74
  br label %118

117:                                              ; preds = %74
  br label %118

118:                                              ; preds = %117, %116, %103, %99, %95
  %119 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %120 = call i32 @cfg80211_process_rdev_events(%struct.cfg80211_registered_device* %119)
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = call i32 @cfg80211_mlme_purge_registrations(%struct.TYPE_8__* %123)
  br label %125

125:                                              ; preds = %118, %70
  %126 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %127 = load %struct.net_device*, %struct.net_device** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %130 = call i32 @rdev_change_virtual_intf(%struct.cfg80211_registered_device* %126, %struct.net_device* %127, i32 %128, %struct.vif_params* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load %struct.net_device*, %struct.net_device** %7, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %138, %139
  br label %141

141:                                              ; preds = %133, %125
  %142 = phi i1 [ false, %125 ], [ %140, %133 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @WARN_ON(i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %141
  %148 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %149 = icmp ne %struct.vif_params* %148, null
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %152 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %157 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.net_device*, %struct.net_device** %7, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %155, %150, %147, %141
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %195, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.net_device*, %struct.net_device** %7, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load i32, i32* %8, align 4
  switch i32 %173, label %194 [
    i32 131, label %174
    i32 135, label %183
    i32 134, label %183
    i32 141, label %183
    i32 132, label %189
    i32 140, label %189
    i32 139, label %189
    i32 129, label %189
    i32 138, label %189
    i32 137, label %190
    i32 130, label %191
    i32 128, label %191
    i32 133, label %192
    i32 136, label %192
  ]

174:                                              ; preds = %166
  %175 = load %struct.net_device*, %struct.net_device** %7, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %194

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %166, %166, %166, %182
  %184 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %185 = load %struct.net_device*, %struct.net_device** %7, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %194

189:                                              ; preds = %166, %166, %166, %166, %166
  br label %194

190:                                              ; preds = %166
  br label %194

191:                                              ; preds = %166, %166
  br label %194

192:                                              ; preds = %166, %166
  %193 = call i32 @WARN_ON(i32 1)
  br label %194

194:                                              ; preds = %166, %192, %191, %190, %189, %183, %181
  br label %195

195:                                              ; preds = %194, %163
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %213, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load %struct.net_device*, %struct.net_device** %7, align 8
  %204 = call i64 @netif_running(%struct.net_device* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device* %207, i32 %208, i32 1)
  %210 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device* %210, i32 %211, i32 -1)
  br label %213

213:                                              ; preds = %206, %202, %198, %195
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %213, %67, %48, %29, %20
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @wdev_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @rdev_set_qos_map(%struct.cfg80211_registered_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @wdev_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @cfg80211_stop_ap(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @cfg80211_process_rdev_events(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @cfg80211_mlme_purge_registrations(%struct.TYPE_8__*) #1

declare dso_local i32 @rdev_change_virtual_intf(%struct.cfg80211_registered_device*, %struct.net_device*, i32, %struct.vif_params*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @cfg80211_update_iface_num(%struct.cfg80211_registered_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
