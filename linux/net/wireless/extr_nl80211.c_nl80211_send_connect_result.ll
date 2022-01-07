; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_connect_result.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_connect_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_resp_params = type { i64, %struct.TYPE_2__, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }

@WLAN_PMKID_LEN = common dso_local global i64 0, align 8
@NL80211_CMD_CONNECT = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_STATUS_CODE = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i64 0, align 8
@NL80211_ATTR_TIMED_OUT = common dso_local global i32 0, align 4
@NL80211_ATTR_TIMEOUT_REASON = common dso_local global i32 0, align 4
@NL80211_ATTR_REQ_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_RESP_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@NL80211_ATTR_FILS_KEK = common dso_local global i32 0, align 4
@NL80211_ATTR_PMK = common dso_local global i32 0, align 4
@NL80211_ATTR_PMKID = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_connect_result(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_connect_resp_params* %2, i32 %3) #0 {
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_resp_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_resp_params* %2, %struct.cfg80211_connect_resp_params** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %12 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 100, %13
  %15 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %16 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %20 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %18, %22
  %24 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %25 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %30 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @WLAN_PMKID_LEN, align 8
  br label %37

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i64 [ %35, %34 ], [ 0, %36 ]
  %39 = add nsw i64 %28, %38
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.sk_buff* @nlmsg_new(i64 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %241

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %48 = call i8* @nl80211hdr_put(%struct.sk_buff* %46, i32 0, i32 0, i32 0, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = call i32 @nlmsg_free(%struct.sk_buff* %52)
  br label %241

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %58 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %55, i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %226, label %62

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %226, label %70

70:                                               ; preds = %62
  %71 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %72 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %77 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %78 = load i64, i64* @ETH_ALEN, align 8
  %79 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %80 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @nla_put(%struct.sk_buff* %76, i32 %77, i64 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %226, label %84

84:                                               ; preds = %75, %70
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = load i32, i32* @NL80211_ATTR_STATUS_CODE, align 4
  %87 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %88 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  br label %97

93:                                               ; preds = %84
  %94 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %95 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  br label %97

97:                                               ; preds = %93, %91
  %98 = phi i64 [ %92, %91 ], [ %96, %93 ]
  %99 = call i64 @nla_put_u16(%struct.sk_buff* %85, i32 %86, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %226, label %101

101:                                              ; preds = %97
  %102 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %103 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = load i32, i32* @NL80211_ATTR_TIMED_OUT, align 4
  %109 = call i64 @nla_put_flag(%struct.sk_buff* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %226, label %111

111:                                              ; preds = %106
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = load i32, i32* @NL80211_ATTR_TIMEOUT_REASON, align 4
  %114 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %115 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @nla_put_u32(%struct.sk_buff* %112, i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %226, label %119

119:                                              ; preds = %111, %101
  %120 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %121 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = load i32, i32* @NL80211_ATTR_REQ_IE, align 4
  %127 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %128 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %131 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @nla_put(%struct.sk_buff* %125, i32 %126, i64 %129, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %226, label %135

135:                                              ; preds = %124, %119
  %136 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %137 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = load i32, i32* @NL80211_ATTR_RESP_IE, align 4
  %143 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %144 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %147 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @nla_put(%struct.sk_buff* %141, i32 %142, i64 %145, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %226, label %151

151:                                              ; preds = %140, %135
  %152 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %153 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = load i32, i32* @NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM, align 4
  %160 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %161 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @nla_put_u16(%struct.sk_buff* %158, i32 %159, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %226, label %166

166:                                              ; preds = %157, %151
  %167 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %168 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %227

172:                                              ; preds = %166
  %173 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %174 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %172
  %179 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %180 = load i32, i32* @NL80211_ATTR_FILS_KEK, align 4
  %181 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %182 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %186 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @nla_put(%struct.sk_buff* %179, i32 %180, i64 %184, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %226, label %191

191:                                              ; preds = %178, %172
  %192 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %193 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %191
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = load i32, i32* @NL80211_ATTR_PMK, align 4
  %200 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %201 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %205 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @nla_put(%struct.sk_buff* %198, i32 %199, i64 %203, i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %226, label %210

210:                                              ; preds = %197, %191
  %211 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %212 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %210
  %217 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %218 = load i32, i32* @NL80211_ATTR_PMKID, align 4
  %219 = load i64, i64* @WLAN_PMKID_LEN, align 8
  %220 = load %struct.cfg80211_connect_resp_params*, %struct.cfg80211_connect_resp_params** %7, align 8
  %221 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @nla_put(%struct.sk_buff* %217, i32 %218, i64 %219, i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216, %197, %178, %157, %140, %124, %111, %106, %97, %75, %62, %54
  br label %238

227:                                              ; preds = %216, %210, %166
  %228 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = call i32 @genlmsg_end(%struct.sk_buff* %228, i8* %229)
  %231 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %232 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %231, i32 0, i32 0
  %233 = call i32 @wiphy_net(i32* %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %235 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %233, %struct.sk_buff* %234, i32 0, i32 %235, i32 %236)
  br label %241

238:                                              ; preds = %226
  %239 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %240 = call i32 @nlmsg_free(%struct.sk_buff* %239)
  br label %241

241:                                              ; preds = %238, %227, %51, %44
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
