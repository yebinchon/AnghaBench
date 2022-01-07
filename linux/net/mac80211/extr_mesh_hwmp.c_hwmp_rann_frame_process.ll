; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_hwmp_rann_frame_process.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_hwmp_rann_frame_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ieee80211_rann_ie = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.sta_info = type { i32 }
%struct.mesh_path = type { i64, i64, i32, i32, i32, i64 }

@RANN_FLAG_IS_GATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"received RANN from %pM via neighbour %pM (is_gate=%d)\0A\00", align 1
@MAX_METRIC = common dso_local global i64 0, align 8
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"time to refresh root mpath %pM\0A\00", align 1
@PREQ_Q_F_START = common dso_local global i32 0, align 4
@PREQ_Q_F_REFRESH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MPATH_RANN = common dso_local global i32 0, align 4
@broadcast_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, %struct.ieee80211_rann_ie*)* @hwmp_rann_frame_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmp_rann_frame_process(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, %struct.ieee80211_rann_ie* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.ieee80211_rann_ie*, align 8
  %7 = alloca %struct.ieee80211_if_mesh*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.mesh_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store %struct.ieee80211_rann_ie* %2, %struct.ieee80211_rann_ie** %6, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %23, %struct.ieee80211_if_mesh** %7, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 2
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %25, align 8
  store %struct.ieee80211_local* %26, %struct.ieee80211_local** %8, align 8
  %27 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @RANN_FLAG_IS_GATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %20, align 4
  %40 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %14, align 8
  %43 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  store i64 %46, i64* %15, align 8
  %47 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @le32_to_cpu(i32 %49)
  store i64 %50, i64* %19, align 8
  %51 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load %struct.ieee80211_rann_ie*, %struct.ieee80211_rann_ie** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rann_ie, %struct.ieee80211_rann_ie* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  store i64 %59, i64* %17, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ether_addr_equal(i32* %60, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %3
  br label %244

68:                                               ; preds = %3
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @mhwmp_dbg(%struct.ieee80211_sub_if_data* %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32* %70, i32 %73, i32 %74)
  %76 = call i32 (...) @rcu_read_lock()
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %78 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %77, i32 %80)
  store %struct.sta_info* %81, %struct.sta_info** %9, align 8
  %82 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %83 = icmp ne %struct.sta_info* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %68
  %85 = call i32 (...) @rcu_read_unlock()
  br label %244

86:                                               ; preds = %68
  %87 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %88 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %89 = call i64 @airtime_link_metric_get(%struct.ieee80211_local* %87, %struct.sta_info* %88)
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = add nsw i64 %90, %91
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %17, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i64, i64* @MAX_METRIC, align 8
  store i64 %97, i64* %16, align 8
  br label %98

98:                                               ; preds = %96, %86
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data* %99, i32* %100)
  store %struct.mesh_path* %101, %struct.mesh_path** %10, align 8
  %102 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %103 = icmp ne %struct.mesh_path* %102, null
  br i1 %103, label %121, label %104

104:                                              ; preds = %98
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = call %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %105, i32* %106)
  store %struct.mesh_path* %107, %struct.mesh_path** %10, align 8
  %108 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %109 = call i64 @IS_ERR(%struct.mesh_path* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = call i32 (...) @rcu_read_unlock()
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %244

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %123 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @SN_LT(i64 %124, i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %121
  %129 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %130 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %15, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i64, i64* %16, align 8
  %136 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %137 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp slt i64 %135, %138
  br i1 %139, label %142, label %140

140:                                              ; preds = %134, %128
  %141 = call i32 (...) @rcu_read_unlock()
  br label %244

142:                                              ; preds = %134, %121
  %143 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %144 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %147 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %142
  %152 = load i64, i64* @jiffies, align 8
  %153 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %154 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %157 = call i64 @root_path_confirmation_jiffies(%struct.ieee80211_sub_if_data* %156)
  %158 = add nsw i64 %155, %157
  %159 = call i64 @time_after(i64 %152, i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %151
  %162 = load i64, i64* @jiffies, align 8
  %163 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %164 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @time_before(i64 %162, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %161, %151, %142
  %169 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %170 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @MESH_PATH_FIXED, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %190, label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %180 = load i32*, i32** %14, align 8
  %181 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @mhwmp_dbg(%struct.ieee80211_sub_if_data* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %180)
  %182 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %183 = load i32, i32* @PREQ_Q_F_START, align 4
  %184 = load i32, i32* @PREQ_Q_F_REFRESH, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @mesh_queue_preq(%struct.mesh_path* %182, i32 %185)
  %187 = load i64, i64* @jiffies, align 8
  %188 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %189 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %188, i32 0, i32 5
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %178, %175, %168, %161
  %191 = load i64, i64* %15, align 8
  %192 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %193 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load i64, i64* %16, align 8
  %195 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %196 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %195, i32 0, i32 1
  store i64 %194, i64* %196, align 8
  %197 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %198 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %197, i32 0, i32 3
  store i32 1, i32* %198, align 4
  %199 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %200 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %203 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @ETH_ALEN, align 4
  %206 = call i32 @memcpy(i32 %201, i32 %204, i32 %205)
  %207 = load i32, i32* %20, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %190
  %210 = load %struct.mesh_path*, %struct.mesh_path** %10, align 8
  %211 = call i32 @mesh_path_add_gate(%struct.mesh_path* %210)
  br label %212

212:                                              ; preds = %209, %190
  %213 = load i32, i32* %11, align 4
  %214 = icmp sle i32 %213, 1
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %7, align 8
  %217 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = call i32 (...) @rcu_read_unlock()
  br label %244

222:                                              ; preds = %212
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %11, align 4
  %225 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %7, align 8
  %226 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %222
  %231 = load i32, i32* @MPATH_RANN, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32*, i32** %14, align 8
  %234 = load i64, i64* %15, align 8
  %235 = load i32, i32* @broadcast_addr, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load i64, i64* %19, align 8
  %239 = load i64, i64* %16, align 8
  %240 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %241 = call i32 @mesh_path_sel_frame_tx(i32 %231, i32 %232, i32* %233, i64 %234, i32 0, i32* null, i32 0, i32 %235, i32 %236, i32 %237, i64 %238, i64 %239, i32 0, %struct.ieee80211_sub_if_data* %240)
  br label %242

242:                                              ; preds = %230, %222
  %243 = call i32 (...) @rcu_read_unlock()
  br label %244

244:                                              ; preds = %242, %215, %140, %111, %84, %67
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @mhwmp_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @airtime_link_metric_get(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local %struct.mesh_path* @mesh_path_lookup(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

declare dso_local i32 @SN_LT(i64, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @root_path_confirmation_jiffies(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mesh_queue_preq(%struct.mesh_path*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mesh_path_add_gate(%struct.mesh_path*) #1

declare dso_local i32 @mesh_path_sel_frame_tx(i32, i32, i32*, i64, i32, i32*, i32, i32, i32, i32, i64, i64, i32, %struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
