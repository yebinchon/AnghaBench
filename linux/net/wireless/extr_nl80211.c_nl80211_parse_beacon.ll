; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@NL80211_ATTR_BEACON_HEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_BEACON_TAIL = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_IE_PROBE_RESP = common dso_local global i64 0, align 8
@NL80211_ATTR_IE_ASSOC_RESP = common dso_local global i64 0, align 8
@NL80211_ATTR_PROBE_RESP = common dso_local global i64 0, align 8
@NL80211_ATTR_FTM_RESPONDER = common dso_local global i64 0, align 8
@NL80211_FTM_RESP_ATTR_MAX = common dso_local global i32 0, align 4
@NL80211_FTM_RESP_ATTR_ENABLED = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_FTM_RESP_ATTR_LCI = common dso_local global i64 0, align 8
@NL80211_FTM_RESP_ATTR_CIVICLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.nlattr**, %struct.cfg80211_beacon_data*)* @nl80211_parse_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_beacon(%struct.cfg80211_registered_device* %0, %struct.nlattr** %1, %struct.cfg80211_beacon_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.cfg80211_beacon_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.cfg80211_beacon_data* %2, %struct.cfg80211_beacon_data** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %14 = call i32 @memset(%struct.cfg80211_beacon_data* %13, i32 0, i32 136)
  %15 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %16 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  %21 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %22 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i8* @nla_data(%struct.nlattr* %24)
  %26 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %27 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %26, i32 0, i32 16
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %29 = load i64, i64* @NL80211_ATTR_BEACON_HEAD, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i8* @nla_len(%struct.nlattr* %31)
  %33 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %34 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %33, i32 0, i32 15
  store i8* %32, i8** %34, align 8
  %35 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %36 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %35, i32 0, i32 15
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %20
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %238

42:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %51 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i8* @nla_data(%struct.nlattr* %53)
  %55 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %56 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %58 = load i64, i64* @NL80211_ATTR_BEACON_TAIL, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_len(%struct.nlattr* %60)
  %62 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %63 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %49, %43
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %238

70:                                               ; preds = %64
  %71 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %72 = load i64, i64* @NL80211_ATTR_IE, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %78 = load i64, i64* @NL80211_ATTR_IE, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i8* @nla_data(%struct.nlattr* %80)
  %82 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %83 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %82, i32 0, i32 12
  store i8* %81, i8** %83, align 8
  %84 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %85 = load i64, i64* @NL80211_ATTR_IE, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call i8* @nla_len(%struct.nlattr* %87)
  %89 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %89, i32 0, i32 11
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %76, %70
  %92 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %93 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %99 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i8* @nla_data(%struct.nlattr* %101)
  %103 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %104 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %106 = load i64, i64* @NL80211_ATTR_IE_PROBE_RESP, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %105, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i8* @nla_len(%struct.nlattr* %108)
  %110 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %111 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %97, %91
  %113 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %114 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %113, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = icmp ne %struct.nlattr* %116, null
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %120 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i8* @nla_data(%struct.nlattr* %122)
  %124 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %125 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %127 = load i64, i64* @NL80211_ATTR_IE_ASSOC_RESP, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %126, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = call i8* @nla_len(%struct.nlattr* %129)
  %131 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %132 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %131, i32 0, i32 7
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %118, %112
  %134 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %135 = load i64, i64* @NL80211_ATTR_PROBE_RESP, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %134, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %141 = load i64, i64* @NL80211_ATTR_PROBE_RESP, align 8
  %142 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %140, i64 %141
  %143 = load %struct.nlattr*, %struct.nlattr** %142, align 8
  %144 = call i8* @nla_data(%struct.nlattr* %143)
  %145 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %146 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  %147 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %148 = load i64, i64* @NL80211_ATTR_PROBE_RESP, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %147, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = call i8* @nla_len(%struct.nlattr* %150)
  %152 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %153 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %139, %133
  %155 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %156 = load i64, i64* @NL80211_ATTR_FTM_RESPONDER, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %155, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = icmp ne %struct.nlattr* %158, null
  br i1 %159, label %160, label %234

160:                                              ; preds = %154
  %161 = load i32, i32* @NL80211_FTM_RESP_ATTR_MAX, align 4
  %162 = add nsw i32 %161, 1
  %163 = zext i32 %162 to i64
  %164 = call i8* @llvm.stacksave()
  store i8* %164, i8** %10, align 8
  %165 = alloca %struct.nlattr*, i64 %163, align 16
  store i64 %163, i64* %11, align 8
  %166 = load i32, i32* @NL80211_FTM_RESP_ATTR_MAX, align 4
  %167 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %168 = load i64, i64* @NL80211_ATTR_FTM_RESPONDER, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %167, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %165, i32 %166, %struct.nlattr* %170, i32* null, i32* null)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %160
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %230

176:                                              ; preds = %160
  %177 = load i64, i64* @NL80211_FTM_RESP_ATTR_ENABLED, align 8
  %178 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %177
  %179 = load %struct.nlattr*, %struct.nlattr** %178, align 8
  %180 = icmp ne %struct.nlattr* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %183 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %182, i32 0, i32 0
  %184 = load i32, i32* @NL80211_EXT_FEATURE_ENABLE_FTM_RESPONDER, align 4
  %185 = call i64 @wiphy_ext_feature_isset(i32* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %189 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  br label %193

190:                                              ; preds = %181, %176
  %191 = load i32, i32* @EOPNOTSUPP, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %230

193:                                              ; preds = %187
  %194 = load i64, i64* @NL80211_FTM_RESP_ATTR_LCI, align 8
  %195 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %194
  %196 = load %struct.nlattr*, %struct.nlattr** %195, align 8
  %197 = icmp ne %struct.nlattr* %196, null
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = load i64, i64* @NL80211_FTM_RESP_ATTR_LCI, align 8
  %200 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %199
  %201 = load %struct.nlattr*, %struct.nlattr** %200, align 8
  %202 = call i8* @nla_data(%struct.nlattr* %201)
  %203 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %204 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %203, i32 0, i32 4
  store i8* %202, i8** %204, align 8
  %205 = load i64, i64* @NL80211_FTM_RESP_ATTR_LCI, align 8
  %206 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %205
  %207 = load %struct.nlattr*, %struct.nlattr** %206, align 8
  %208 = call i8* @nla_len(%struct.nlattr* %207)
  %209 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %210 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %198, %193
  %212 = load i64, i64* @NL80211_FTM_RESP_ATTR_CIVICLOC, align 8
  %213 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %212
  %214 = load %struct.nlattr*, %struct.nlattr** %213, align 8
  %215 = icmp ne %struct.nlattr* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %211
  %217 = load i64, i64* @NL80211_FTM_RESP_ATTR_CIVICLOC, align 8
  %218 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %217
  %219 = load %struct.nlattr*, %struct.nlattr** %218, align 8
  %220 = call i8* @nla_data(%struct.nlattr* %219)
  %221 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %222 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  %223 = load i64, i64* @NL80211_FTM_RESP_ATTR_CIVICLOC, align 8
  %224 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %223
  %225 = load %struct.nlattr*, %struct.nlattr** %224, align 8
  %226 = call i8* @nla_len(%struct.nlattr* %225)
  %227 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %228 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %227, i32 0, i32 1
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %216, %211
  store i32 0, i32* %12, align 4
  br label %230

230:                                              ; preds = %229, %190, %174
  %231 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %231)
  %232 = load i32, i32* %12, align 4
  switch i32 %232, label %240 [
    i32 0, label %233
    i32 1, label %238
  ]

233:                                              ; preds = %230
  br label %237

234:                                              ; preds = %154
  %235 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %7, align 8
  %236 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %235, i32 0, i32 0
  store i32 -1, i32* %236, align 8
  br label %237

237:                                              ; preds = %234, %233
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %237, %230, %67, %39
  %239 = load i32, i32* %4, align 4
  ret i32 %239

240:                                              ; preds = %230
  unreachable
}

declare dso_local i32 @memset(%struct.cfg80211_beacon_data*, i32, i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @nla_len(%struct.nlattr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #1

declare dso_local i64 @wiphy_ext_feature_isset(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
