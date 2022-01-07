; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_wiphy_verify_combinations.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_wiphy_verify_combinations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, %struct.ieee80211_iface_combination* }
%struct.ieee80211_iface_combination = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CFG80211_MAX_NUM_DIFFERENT_CHANNELS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_NAN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*)* @wiphy_verify_combinations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiphy_verify_combinations(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_iface_combination*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %268, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %13 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %271

16:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 3
  %19 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %19, i64 %21
  store %struct.ieee80211_iface_combination* %22, %struct.ieee80211_iface_combination** %4, align 8
  %23 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %16
  %34 = phi i1 [ false, %16 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %272

41:                                               ; preds = %33
  %42 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %272

53:                                               ; preds = %41
  %54 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CFG80211_MAX_NUM_DIFFERENT_CHANNELS, align 4
  %58 = icmp sgt i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %272

65:                                               ; preds = %53
  %66 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 1
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  %78 = call i64 @WARN_ON(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %272

83:                                               ; preds = %75
  %84 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @WARN_ON(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %272

95:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %242, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %245

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %111, %112
  %114 = call i64 @WARN_ON(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %272

119:                                              ; preds = %102
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i64 @WARN_ON(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %119
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %272

139:                                              ; preds = %119
  %140 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %141 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = and i32 %142, %143
  %145 = call i64 @WARN_ON(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %272

150:                                              ; preds = %139
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %153 = call i32 @BIT(i32 %152)
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %158 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %157, i32 0, i32 3
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 1
  br label %166

166:                                              ; preds = %156, %150
  %167 = phi i1 [ false, %150 ], [ %165, %156 ]
  %168 = zext i1 %167 to i32
  %169 = call i64 @WARN_ON(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %272

174:                                              ; preds = %166
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @NL80211_IFTYPE_NAN, align 4
  %177 = call i32 @BIT(i32 %176)
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %182 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %181, i32 0, i32 3
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 1
  br label %190

190:                                              ; preds = %180, %174
  %191 = phi i1 [ false, %174 ], [ %189, %180 ]
  %192 = zext i1 %191 to i32
  %193 = call i64 @WARN_ON(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %272

198:                                              ; preds = %190
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %201 = call i32 @BIT(i32 %200)
  %202 = and i32 %199, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %206 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %204, %198
  %210 = phi i1 [ false, %198 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  %212 = call i64 @WARN_ON(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %2, align 4
  br label %272

217:                                              ; preds = %209
  %218 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %219 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %218, i32 0, i32 3
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %7, align 4
  %228 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %229 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i64 @WARN_ON(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %217
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %2, align 4
  br label %272

241:                                              ; preds = %217
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %96

245:                                              ; preds = %96
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %248 = call i32 @BIT(i32 %247)
  %249 = and i32 %246, %248
  %250 = call i64 @WARN_ON(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %2, align 4
  br label %272

255:                                              ; preds = %245
  %256 = load i32, i32* %7, align 4
  %257 = load %struct.ieee80211_iface_combination*, %struct.ieee80211_iface_combination** %4, align 8
  %258 = getelementptr inbounds %struct.ieee80211_iface_combination, %struct.ieee80211_iface_combination* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  %261 = zext i1 %260 to i32
  %262 = call i64 @WARN_ON(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %255
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %2, align 4
  br label %272

267:                                              ; preds = %255
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %5, align 4
  br label %10

271:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %272

272:                                              ; preds = %271, %264, %252, %238, %214, %195, %171, %147, %136, %116, %92, %80, %62, %50, %38
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
