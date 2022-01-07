; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_replace.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32*, i32, i32, i32, i32, i32 }
%struct.sta_info = type { i32, i32*, i32* }
%struct.ieee80211_key = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@KEY_FLAG_UPLOADED_TO_HARDWARE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_NO_AUTO_TX = common dso_local global i32 0, align 4
@WLAN_STA_BLOCK_BA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, %struct.ieee80211_key*, %struct.ieee80211_key*)* @ieee80211_key_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_key_replace(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, i32 %2, %struct.ieee80211_key* %3, %struct.ieee80211_key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_key*, align 8
  %11 = alloca %struct.ieee80211_key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_key* %3, %struct.ieee80211_key** %10, align 8
  store %struct.ieee80211_key* %4, %struct.ieee80211_key** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %18 = icmp ne %struct.ieee80211_key* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %21 = icmp ne %struct.ieee80211_key* %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ false, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %299

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %31 = icmp ne %struct.ieee80211_key* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %33, i32 0, i32 1
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %35, i32 0, i32 5
  %37 = call i32 @list_add_tail_rcu(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %40 = icmp ne %struct.ieee80211_key* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %43 = icmp ne %struct.ieee80211_key* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %50 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %48, %52
  br label %54

54:                                               ; preds = %44, %41, %38
  %55 = phi i1 [ false, %41 ], [ false, %38 ], [ %53, %44 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %59 = icmp ne %struct.ieee80211_key* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %62 = icmp ne %struct.sta_info* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %68 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %69 = call i32 @ieee80211_pairwise_rekey(%struct.ieee80211_key* %67, %struct.ieee80211_key* %68)
  br label %70

70:                                               ; preds = %66, %63, %60, %54
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %72 = icmp ne %struct.ieee80211_key* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %12, align 4
  %78 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %86 = call i32 @ieee80211_key_disable_hw_accel(%struct.ieee80211_key* %85)
  %87 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %88 = icmp ne %struct.ieee80211_key* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %91 = call i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key* %90)
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %73
  br label %109

94:                                               ; preds = %70
  %95 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %96 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %12, align 4
  %99 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %100 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %107 = call i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key* %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %94
  br label %109

109:                                              ; preds = %108, %93
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %6, align 4
  br label %299

114:                                              ; preds = %109
  %115 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %116 = icmp ne %struct.sta_info* %115, null
  br i1 %116, label %117, label %170

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %122 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %129 = call i32 @rcu_assign_pointer(i32 %127, %struct.ieee80211_key* %128)
  %130 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %131 = icmp ne %struct.ieee80211_key* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %120
  %133 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %134 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IEEE80211_KEY_FLAG_NO_AUTO_TX, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %143 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %145 = load i32, i32* @WLAN_STA_BLOCK_BA, align 4
  %146 = call i32 @clear_sta_flag(%struct.sta_info* %144, i32 %145)
  %147 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %148 = call i32 @ieee80211_check_fast_xmit(%struct.sta_info* %147)
  br label %149

149:                                              ; preds = %140, %132, %120
  br label %160

150:                                              ; preds = %117
  %151 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %152 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %159 = call i32 @rcu_assign_pointer(i32 %157, %struct.ieee80211_key* %158)
  br label %160

160:                                              ; preds = %150, %149
  %161 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %162 = icmp ne %struct.ieee80211_key* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %165 = icmp ne %struct.ieee80211_key* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %168 = call i32 @ieee80211_check_fast_rx(%struct.sta_info* %167)
  br label %169

169:                                              ; preds = %166, %163, %160
  br label %291

170:                                              ; preds = %114
  %171 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %172 = icmp ne %struct.ieee80211_key* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %179 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %177, i32 %180)
  %182 = icmp eq %struct.ieee80211_key* %174, %181
  br label %183

183:                                              ; preds = %173, %170
  %184 = phi i1 [ false, %170 ], [ %182, %173 ]
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %14, align 4
  %186 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %187 = icmp ne %struct.ieee80211_key* %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %190 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %191 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %194 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %192, i32 %195)
  %197 = icmp eq %struct.ieee80211_key* %189, %196
  br label %198

198:                                              ; preds = %188, %183
  %199 = phi i1 [ false, %183 ], [ %197, %188 ]
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %15, align 4
  %201 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %202 = icmp ne %struct.ieee80211_key* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %205 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %206 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %209 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %207, i32 %210)
  %212 = icmp eq %struct.ieee80211_key* %204, %211
  br label %213

213:                                              ; preds = %203, %198
  %214 = phi i1 [ false, %198 ], [ %212, %203 ]
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %220 = icmp ne %struct.ieee80211_key* %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %223 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %222, i32 -1, i32 1, i32 0)
  br label %224

224:                                              ; preds = %221, %218, %213
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %229 = icmp ne %struct.ieee80211_key* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %232 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %231, i32 -1, i32 0, i32 1)
  br label %233

233:                                              ; preds = %230, %227, %224
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %238 = icmp ne %struct.ieee80211_key* %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %241 = call i32 @__ieee80211_set_default_mgmt_key(%struct.ieee80211_sub_if_data* %240, i32 -1)
  br label %242

242:                                              ; preds = %239, %236, %233
  %243 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %244 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %251 = call i32 @rcu_assign_pointer(i32 %249, %struct.ieee80211_key* %250)
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %242
  %255 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %256 = icmp ne %struct.ieee80211_key* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  %258 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %259 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %260 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %258, i32 %262, i32 1, i32 0)
  br label %264

264:                                              ; preds = %257, %254, %242
  %265 = load i32, i32* %15, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %269 = icmp ne %struct.ieee80211_key* %268, null
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %272 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %273 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data* %271, i32 %275, i32 0, i32 1)
  br label %277

277:                                              ; preds = %270, %267, %264
  %278 = load i32, i32* %16, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  %281 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %282 = icmp ne %struct.ieee80211_key* %281, null
  br i1 %282, label %283, label %290

283:                                              ; preds = %280
  %284 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %285 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %286 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @__ieee80211_set_default_mgmt_key(%struct.ieee80211_sub_if_data* %284, i32 %288)
  br label %290

290:                                              ; preds = %283, %280, %277
  br label %291

291:                                              ; preds = %290, %169
  %292 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %293 = icmp ne %struct.ieee80211_key* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load %struct.ieee80211_key*, %struct.ieee80211_key** %10, align 8
  %296 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %295, i32 0, i32 1
  %297 = call i32 @list_del_rcu(i32* %296)
  br label %298

298:                                              ; preds = %294, %291
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %298, %112, %28
  %300 = load i32, i32* %6, align 4
  ret i32 %300
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @ieee80211_pairwise_rekey(%struct.ieee80211_key*, %struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_disable_hw_accel(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_enable_hw_accel(%struct.ieee80211_key*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_key*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_check_fast_xmit(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_check_fast_rx(%struct.sta_info*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(i32, i32) #1

declare dso_local i32 @__ieee80211_set_default_key(%struct.ieee80211_sub_if_data*, i32, i32, i32) #1

declare dso_local i32 @__ieee80211_set_default_mgmt_key(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
