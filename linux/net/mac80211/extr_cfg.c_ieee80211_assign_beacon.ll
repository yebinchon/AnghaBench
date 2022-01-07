; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_assign_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_assign_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.ieee80211_csa_settings = type { i32, i32*, i32 }
%struct.beacon_data = type { i32, i32, i32*, i32*, i32*, i32 }

@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BSS_CHANGED_AP_PROBE_RESP = common dso_local global i32 0, align 4
@BSS_CHANGED_FTM_RESPONDER = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_beacon_data*, %struct.ieee80211_csa_settings*)* @ieee80211_assign_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_assign_beacon(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_beacon_data* %1, %struct.ieee80211_csa_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.cfg80211_beacon_data*, align 8
  %7 = alloca %struct.ieee80211_csa_settings*, align 8
  %8 = alloca %struct.beacon_data*, align 8
  %9 = alloca %struct.beacon_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %6, align 8
  store %struct.ieee80211_csa_settings* %2, %struct.ieee80211_csa_settings** %7, align 8
  %15 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %22 = call %struct.beacon_data* @sdata_dereference(i32 %20, %struct.ieee80211_sub_if_data* %21)
  store %struct.beacon_data* %22, %struct.beacon_data** %9, align 8
  %23 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %23, i32 0, i32 10
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %29 = icmp ne %struct.beacon_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %245

33:                                               ; preds = %27, %3
  %34 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %35 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %34, i32 0, i32 10
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %10, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %44 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %48 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %47, i32 0, i32 9
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %53 = icmp ne %struct.beacon_data* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %60 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 40, %64
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.beacon_data* @kzalloc(i32 %70, i32 %71)
  store %struct.beacon_data* %72, %struct.beacon_data** %8, align 8
  %73 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %74 = icmp ne %struct.beacon_data* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %245

78:                                               ; preds = %62
  %79 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %80 = bitcast %struct.beacon_data* %79 to i32*
  %81 = getelementptr inbounds i32, i32* %80, i64 40
  %82 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %83 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %85 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %91 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %94 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %97 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ieee80211_csa_settings*, %struct.ieee80211_csa_settings** %7, align 8
  %99 = icmp ne %struct.ieee80211_csa_settings* %98, null
  br i1 %99, label %100, label %119

100:                                              ; preds = %78
  %101 = load %struct.ieee80211_csa_settings*, %struct.ieee80211_csa_settings** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %105 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %107 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.ieee80211_csa_settings*, %struct.ieee80211_csa_settings** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.ieee80211_csa_settings*, %struct.ieee80211_csa_settings** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32* %108, i32* %111, i32 %117)
  br label %119

119:                                              ; preds = %100, %78
  %120 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %121 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %120, i32 0, i32 10
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %126 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %129 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %128, i32 0, i32 10
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @memcpy(i32* %127, i32* %130, i32 %131)
  br label %142

133:                                              ; preds = %119
  %134 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %135 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %138 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @memcpy(i32* %136, i32* %139, i32 %140)
  br label %142

142:                                              ; preds = %133, %124
  %143 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %144 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %149 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %152 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %151, i32 0, i32 9
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @memcpy(i32* %150, i32* %153, i32 %154)
  br label %169

156:                                              ; preds = %142
  %157 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %158 = icmp ne %struct.beacon_data* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %161 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %164 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @memcpy(i32* %162, i32* %165, i32 %166)
  br label %168

168:                                              ; preds = %159, %156
  br label %169

169:                                              ; preds = %168, %147
  %170 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %171 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %172 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %175 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ieee80211_csa_settings*, %struct.ieee80211_csa_settings** %7, align 8
  %178 = call i32 @ieee80211_set_probe_resp(%struct.ieee80211_sub_if_data* %170, i32 %173, i32 %176, %struct.ieee80211_csa_settings* %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %169
  %182 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %183 = call i32 @kfree(%struct.beacon_data* %182)
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %4, align 4
  br label %245

185:                                              ; preds = %169
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* @BSS_CHANGED_AP_PROBE_RESP, align 4
  %190 = load i32, i32* %14, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %188, %185
  %193 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %194 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, -1
  br i1 %196, label %197, label %229

197:                                              ; preds = %192
  %198 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %199 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %202 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i32 %200, i32* %204, align 4
  %205 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %206 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %207 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %210 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %213 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %6, align 8
  %216 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @ieee80211_set_ftm_responder_params(%struct.ieee80211_sub_if_data* %205, i32 %208, i32 %211, i32 %214, i32 %217)
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %197
  %222 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %223 = call i32 @kfree(%struct.beacon_data* %222)
  %224 = load i32, i32* %13, align 4
  store i32 %224, i32* %4, align 4
  br label %245

225:                                              ; preds = %197
  %226 = load i32, i32* @BSS_CHANGED_FTM_RESPONDER, align 4
  %227 = load i32, i32* %14, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %225, %192
  %230 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %231 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.beacon_data*, %struct.beacon_data** %8, align 8
  %236 = call i32 @rcu_assign_pointer(i32 %234, %struct.beacon_data* %235)
  %237 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %238 = icmp ne %struct.beacon_data* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %229
  %240 = load %struct.beacon_data*, %struct.beacon_data** %9, align 8
  %241 = load i32, i32* @rcu_head, align 4
  %242 = call i32 @kfree_rcu(%struct.beacon_data* %240, i32 %241)
  br label %243

243:                                              ; preds = %239, %229
  %244 = load i32, i32* %14, align 4
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %243, %221, %181, %75, %30
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local %struct.beacon_data* @sdata_dereference(i32, %struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.beacon_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ieee80211_set_probe_resp(%struct.ieee80211_sub_if_data*, i32, i32, %struct.ieee80211_csa_settings*) #1

declare dso_local i32 @kfree(%struct.beacon_data*) #1

declare dso_local i32 @ieee80211_set_ftm_responder_params(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.beacon_data*) #1

declare dso_local i32 @kfree_rcu(%struct.beacon_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
