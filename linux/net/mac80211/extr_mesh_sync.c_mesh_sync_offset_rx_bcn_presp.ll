; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_mesh_sync_offset_rx_bcn_presp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_mesh_sync_offset_rx_bcn_presp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_6__ }
%struct.ieee80211_local = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i32, i64 }
%struct.ieee80211_mgmt = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ieee802_11_elems = type { i64, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.sta_info = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }

@IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BEACON = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"STA %pM : is adjusting TBTT\0A\00", align 1
@WLAN_STA_TOFFSET_KNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"STA %pM : t_offset=%lld, t_offset_setpoint=%lld, t_clockdrift=%lld\0A\00", align 1
@TOFFSET_MAXIMUM_ADJUSTMENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"STA %pM : t_clockdrift=%lld too large, setpoint reset\0A\00", align 1
@TOFFSET_SET_MARGIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"STA %pM : offset was invalid, t_offset=%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i64, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)* @mesh_sync_offset_rx_bcn_presp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_sync_offset_rx_bcn_presp(%struct.ieee80211_sub_if_data* %0, i64 %1, %struct.ieee80211_mgmt* %2, %struct.ieee802_11_elems* %3, %struct.ieee80211_rx_status* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca %struct.ieee802_11_elems*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ieee80211_if_mesh*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %8, align 8
  store %struct.ieee802_11_elems* %3, %struct.ieee802_11_elems** %9, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %10, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %19, %struct.ieee80211_if_mesh** %11, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  store %struct.ieee80211_local* %22, %struct.ieee80211_local** %12, align 8
  %23 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %24 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @IEEE80211_STYPE_BEACON, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %190

34:                                               ; preds = %5
  %35 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %36 = call i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %40 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %41 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %42 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 36, %43
  %45 = load i64, i64* @FCS_LEN, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i64 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local* %39, %struct.ieee80211_rx_status* %40, i64 %46, i32 24)
  store i64 %47, i64* %15, align 8
  br label %52

48:                                               ; preds = %34
  %49 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %51 = call i64 @drv_get_tsf(%struct.ieee80211_local* %49, %struct.ieee80211_sub_if_data* %50)
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %48, %38
  %53 = call i32 (...) @rcu_read_lock()
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %55 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %54, i32 %57)
  store %struct.sta_info* %58, %struct.sta_info** %13, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %60 = icmp ne %struct.sta_info* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %188

62:                                               ; preds = %52
  %63 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %64 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %69 = call i64 @mesh_peer_tbtt_adjusting(%struct.ieee802_11_elems* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %188

78:                                               ; preds = %67, %62
  %79 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le64_to_cpu(i32 %83)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %89 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %93 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %94 = call i64 @test_sta_flag(%struct.sta_info* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %161

96:                                               ; preds = %78
  %97 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %103 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %101, %106
  store i64 %107, i64* %16, align 8
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %109 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %108, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %112, i64 %117, i64 %122, i64 %123)
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @TOFFSET_MAXIMUM_ADJUSTMENT, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %96
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* @TOFFSET_MAXIMUM_ADJUSTMENT, align 8
  %131 = sub nsw i64 0, %130
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %128, %96
  %134 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %135 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %136 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %16, align 8
  %140 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %134, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %138, i64 %139)
  %141 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %142 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %143 = call i32 @clear_sta_flag(%struct.sta_info* %141, i32 %142)
  br label %188

144:                                              ; preds = %128
  %145 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %146 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %145, i32 0, i32 1
  %147 = call i32 @spin_lock_bh(i32* %146)
  %148 = load i64, i64* %16, align 8
  %149 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %150 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %144
  %154 = load i64, i64* %16, align 8
  %155 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %156 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %144
  %158 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %11, align 8
  %159 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %158, i32 0, i32 1
  %160 = call i32 @spin_unlock_bh(i32* %159)
  br label %187

161:                                              ; preds = %78
  %162 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %163 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TOFFSET_SET_MARGIN, align 8
  %168 = sub nsw i64 %166, %167
  %169 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %170 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  store i64 %168, i64* %172, align 8
  %173 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %174 = load i32, i32* @WLAN_STA_TOFFSET_KNOWN, align 4
  %175 = call i32 @set_sta_flag(%struct.sta_info* %173, i32 %174)
  %176 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %177 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %178 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %182 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @msync_dbg(%struct.ieee80211_sub_if_data* %176, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %180, i64 %185)
  br label %187

187:                                              ; preds = %161, %157
  br label %188

188:                                              ; preds = %187, %133, %71, %61
  %189 = call i32 (...) @rcu_read_unlock()
  br label %190

190:                                              ; preds = %188, %33
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i64 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local*, %struct.ieee80211_rx_status*, i64, i32) #1

declare dso_local i64 @drv_get_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @mesh_peer_tbtt_adjusting(%struct.ieee802_11_elems*) #1

declare dso_local i32 @msync_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
