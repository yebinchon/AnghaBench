; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_info_move_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_info_move_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.TYPE_10__, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid state %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"moving STA %pM to state %d\0A\00", align 1
@WLAN_STA_INSERTED = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_STA_AUTHORIZED = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sta_info_move_state(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %9 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %250

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %62 [
    i32 128, label %16
    i32 130, label %25
    i32 131, label %39
    i32 129, label %53
  ]

16:                                               ; preds = %14
  %17 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 130
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %250

24:                                               ; preds = %16
  br label %67

25:                                               ; preds = %14
  %26 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %250

38:                                               ; preds = %30, %25
  br label %67

39:                                               ; preds = %14
  %40 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 130
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 129
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %250

52:                                               ; preds = %44, %39
  br label %67

53:                                               ; preds = %14
  %54 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 131
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %250

61:                                               ; preds = %53
  br label %67

62:                                               ; preds = %14
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %250

67:                                               ; preds = %61, %52, %38, %24
  %68 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @sta_dbg(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %78 = load i32, i32* @WLAN_STA_INSERTED, align 4
  %79 = call i64 @test_sta_flag(%struct.sta_info* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %67
  %82 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %89 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @drv_sta_state(i32 %84, %struct.TYPE_11__* %87, %struct.sta_info* %88, i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %250

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i32, i32* %5, align 4
  switch i32 %100, label %245 [
    i32 128, label %101
    i32 130, label %112
    i32 131, label %149
    i32 129, label %197
  ]

101:                                              ; preds = %99
  %102 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %103 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @WLAN_STA_AUTH, align 4
  %108 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 3
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %101
  br label %246

112:                                              ; preds = %99
  %113 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* @WLAN_STA_AUTH, align 4
  %119 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %120 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %119, i32 0, i32 3
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  br label %148

122:                                              ; preds = %112
  %123 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %124 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 131
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %129 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 3
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  %132 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %133 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = call i32 @ieee80211_recalc_min_chandef(%struct.TYPE_11__* %134)
  %136 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %137 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %127
  %142 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %143 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = call i32 @ieee80211_recalc_p2p_go_ps_allowed(%struct.TYPE_11__* %144)
  br label %146

146:                                              ; preds = %141, %127
  br label %147

147:                                              ; preds = %146, %122
  br label %148

148:                                              ; preds = %147, %117
  br label %246

149:                                              ; preds = %99
  %150 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %151 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 130
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %156 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %157 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %156, i32 0, i32 3
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = call i32 (...) @ktime_get_boottime_ns()
  %160 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %161 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %163 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %162, i32 0, i32 2
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = call i32 @ieee80211_recalc_min_chandef(%struct.TYPE_11__* %164)
  %166 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %167 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %154
  %172 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %173 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = call i32 @ieee80211_recalc_p2p_go_ps_allowed(%struct.TYPE_11__* %174)
  br label %176

176:                                              ; preds = %171, %154
  br label %196

177:                                              ; preds = %149
  %178 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %179 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 129
  br i1 %181, label %182, label %195

182:                                              ; preds = %177
  %183 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %184 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %183, i32 0, i32 2
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = call i32 @ieee80211_vif_dec_num_mcast(%struct.TYPE_11__* %185)
  %187 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %188 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %189 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %188, i32 0, i32 3
  %190 = call i32 @clear_bit(i32 %187, i32* %189)
  %191 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %192 = call i32 @ieee80211_clear_fast_xmit(%struct.sta_info* %191)
  %193 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %194 = call i32 @ieee80211_clear_fast_rx(%struct.sta_info* %193)
  br label %195

195:                                              ; preds = %182, %177
  br label %196

196:                                              ; preds = %195, %176
  br label %246

197:                                              ; preds = %99
  %198 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %199 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 131
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %204 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %203, i32 0, i32 2
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = call i32 @ieee80211_vif_inc_num_mcast(%struct.TYPE_11__* %205)
  %207 = load i32, i32* @WLAN_STA_AUTHORIZED, align 4
  %208 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %209 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %208, i32 0, i32 3
  %210 = call i32 @set_bit(i32 %207, i32* %209)
  %211 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %212 = call i32 @ieee80211_check_fast_xmit(%struct.sta_info* %211)
  %213 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %214 = call i32 @ieee80211_check_fast_rx(%struct.sta_info* %213)
  br label %215

215:                                              ; preds = %202, %197
  %216 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %217 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %216, i32 0, i32 2
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @NL80211_IFTYPE_AP_VLAN, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %233, label %224

224:                                              ; preds = %215
  %225 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %226 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %225, i32 0, i32 2
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %224, %215
  %234 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %235 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %234, i32 0, i32 2
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %240 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @cfg80211_send_layer2_update(i32 %238, i32 %242)
  br label %244

244:                                              ; preds = %233, %224
  br label %246

245:                                              ; preds = %99
  br label %246

246:                                              ; preds = %245, %244, %196, %148, %111
  %247 = load i32, i32* %5, align 4
  %248 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %249 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %246, %96, %62, %58, %49, %35, %21, %13
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @sta_dbg(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @drv_sta_state(i32, %struct.TYPE_11__*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_recalc_min_chandef(%struct.TYPE_11__*) #1

declare dso_local i32 @ieee80211_recalc_p2p_go_ps_allowed(%struct.TYPE_11__*) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @ieee80211_vif_dec_num_mcast(%struct.TYPE_11__*) #1

declare dso_local i32 @ieee80211_clear_fast_xmit(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_clear_fast_rx(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_vif_inc_num_mcast(%struct.TYPE_11__*) #1

declare dso_local i32 @ieee80211_check_fast_xmit(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_check_fast_rx(%struct.sta_info*) #1

declare dso_local i32 @cfg80211_send_layer2_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
