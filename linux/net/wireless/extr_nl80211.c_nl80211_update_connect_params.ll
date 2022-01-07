; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_update_connect_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_update_connect_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.wireless_dev*, i32, %struct.TYPE_2__* }
%struct.wireless_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_connect_params = type { i64, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cfg80211_registered_device = type { %struct.wireless_dev*, i32, %struct.TYPE_2__* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@UPDATE_ASSOC_IES = common dso_local global i64 0, align 8
@NL80211_EXT_FEATURE_FILS_SK_OFFLOAD = common dso_local global i32 0, align 4
@NL80211_ATTR_FILS_ERP_USERNAME = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_ERP_REALM = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_ERP_RRK = common dso_local global i64 0, align 8
@UPDATE_FILS_ERP_INFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_AUTH_TYPE = common dso_local global i64 0, align 8
@NL80211_CMD_CONNECT = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_FILS_SK = common dso_local global i64 0, align 8
@UPDATE_AUTH_TYPE = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_update_connect_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_update_connect_params(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_connect_params, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = bitcast %struct.cfg80211_connect_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 80, i1 false)
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = bitcast %struct.net_device* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %7, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 1
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %27, align 8
  store %struct.wireless_dev* %28, %struct.wireless_dev** %9, align 8
  store i64 0, i64* %12, align 8
  %29 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %30 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %271

38:                                               ; preds = %2
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @NL80211_ATTR_IE, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %38
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_IE, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @nla_data(i64 %52)
  %54 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 9
  store i8* %53, i8** %54, align 8
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NL80211_ATTR_IE, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @nla_len(i64 %60)
  %62 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 8
  store i8* %61, i8** %62, align 8
  %63 = load i64, i64* @UPDATE_ASSOC_IES, align 8
  %64 = load i64, i64* %12, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %46, %38
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %68 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %67, i32 0, i32 1
  %69 = load i32, i32* @NL80211_EXT_FEATURE_FILS_SK_OFFLOAD, align 4
  %70 = call i32 @wiphy_ext_feature_isset(i32* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %165

73:                                               ; preds = %66
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @NL80211_ATTR_FILS_ERP_USERNAME, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %165

81:                                               ; preds = %73
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @NL80211_ATTR_FILS_ERP_REALM, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %165

89:                                               ; preds = %81
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %165

97:                                               ; preds = %89
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @NL80211_ATTR_FILS_ERP_RRK, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %165

105:                                              ; preds = %97
  %106 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %107 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @NL80211_ATTR_FILS_ERP_USERNAME, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @nla_data(i64 %111)
  %113 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 7
  store i8* %112, i8** %113, align 8
  %114 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %115 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* @NL80211_ATTR_FILS_ERP_USERNAME, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @nla_len(i64 %119)
  %121 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 6
  store i8* %120, i8** %121, align 8
  %122 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %123 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @NL80211_ATTR_FILS_ERP_REALM, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i8* @nla_data(i64 %127)
  %129 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %131 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @NL80211_ATTR_FILS_ERP_REALM, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @nla_len(i64 %135)
  %137 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 4
  store i8* %136, i8** %137, align 8
  %138 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %139 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* @NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @nla_get_u16(i64 %143)
  %145 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 3
  store i32 %144, i32* %145, align 8
  %146 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %147 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* @NL80211_ATTR_FILS_ERP_RRK, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i8* @nla_data(i64 %151)
  %153 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 2
  store i8* %152, i8** %153, align 8
  %154 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %155 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @NL80211_ATTR_FILS_ERP_RRK, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = call i8* @nla_len(i64 %159)
  %161 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 1
  store i8* %160, i8** %161, align 8
  %162 = load i64, i64* @UPDATE_FILS_ERP_INFO, align 8
  %163 = load i64, i64* %12, align 8
  %164 = or i64 %163, %162
  store i64 %164, i64* %12, align 8
  br label %201

165:                                              ; preds = %97, %89, %81, %73, %66
  %166 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %167 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* @NL80211_ATTR_FILS_ERP_USERNAME, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %197, label %173

173:                                              ; preds = %165
  %174 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %175 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* @NL80211_ATTR_FILS_ERP_REALM, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %173
  %182 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %183 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* @NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %181
  %190 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %191 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = load i64, i64* @NL80211_ATTR_FILS_ERP_RRK, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %189, %181, %173, %165
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %3, align 4
  br label %271

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %105
  %202 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %203 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %247

209:                                              ; preds = %201
  %210 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %211 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i64, i64* @NL80211_ATTR_AUTH_TYPE, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @nla_get_u32(i64 %215)
  store i64 %216, i64* %11, align 8
  %217 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %218 = bitcast %struct.cfg80211_registered_device* %217 to %struct.net_device*
  %219 = load i64, i64* %11, align 8
  %220 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %221 = call i32 @nl80211_valid_auth_type(%struct.net_device* %218, i64 %219, i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %209
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %271

226:                                              ; preds = %209
  %227 = load i64, i64* %11, align 8
  %228 = load i64, i64* @NL80211_AUTHTYPE_FILS_SK, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %230
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* @UPDATE_FILS_ERP_INFO, align 8
  %236 = and i64 %234, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %271

241:                                              ; preds = %233, %230, %226
  %242 = load i64, i64* %11, align 8
  %243 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %6, i32 0, i32 0
  store i64 %242, i64* %243, align 8
  %244 = load i64, i64* @UPDATE_AUTH_TYPE, align 8
  %245 = load i64, i64* %12, align 8
  %246 = or i64 %245, %244
  store i64 %246, i64* %12, align 8
  br label %247

247:                                              ; preds = %241, %201
  %248 = load %struct.net_device*, %struct.net_device** %8, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 0
  %250 = load %struct.wireless_dev*, %struct.wireless_dev** %249, align 8
  %251 = call i32 @wdev_lock(%struct.wireless_dev* %250)
  %252 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %253 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %247
  %257 = load i32, i32* @ENOLINK, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %13, align 4
  br label %265

259:                                              ; preds = %247
  %260 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %261 = bitcast %struct.cfg80211_registered_device* %260 to %struct.net_device*
  %262 = load %struct.net_device*, %struct.net_device** %8, align 8
  %263 = load i64, i64* %12, align 8
  %264 = call i32 @rdev_update_connect_params(%struct.net_device* %261, %struct.net_device* %262, %struct.cfg80211_connect_params* %6, i64 %263)
  store i32 %264, i32* %13, align 4
  br label %265

265:                                              ; preds = %259, %256
  %266 = load %struct.net_device*, %struct.net_device** %8, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 0
  %268 = load %struct.wireless_dev*, %struct.wireless_dev** %267, align 8
  %269 = call i32 @wdev_unlock(%struct.wireless_dev* %268)
  %270 = load i32, i32* %13, align 4
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %265, %238, %223, %197, %35
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @nla_data(i64) #2

declare dso_local i8* @nla_len(i64) #2

declare dso_local i32 @wiphy_ext_feature_isset(i32*, i32) #2

declare dso_local i32 @nla_get_u16(i64) #2

declare dso_local i64 @nla_get_u32(i64) #2

declare dso_local i32 @nl80211_valid_auth_type(%struct.net_device*, i64, i32) #2

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #2

declare dso_local i32 @rdev_update_connect_params(%struct.net_device*, %struct.net_device*, %struct.cfg80211_connect_params*, i64) #2

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
