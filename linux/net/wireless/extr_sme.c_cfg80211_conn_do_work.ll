; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_conn_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_conn_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.cfg80211_connect_params }
%struct.cfg80211_connect_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CFG80211_CONN_AUTHENTICATING = common dso_local global i32 0, align 4
@NL80211_TIMEOUT_AUTH = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@CFG80211_CONN_ASSOCIATING = common dso_local global i32 0, align 4
@NL80211_MFP_NO = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@NL80211_TIMEOUT_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*, i32*)* @cfg80211_conn_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_conn_do_work(%struct.wireless_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.cfg80211_assoc_request, align 4
  %9 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %12)
  store %struct.cfg80211_registered_device* %13, %struct.cfg80211_registered_device** %6, align 8
  %14 = bitcast %struct.cfg80211_assoc_request* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %16 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %15)
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %225

22:                                               ; preds = %2
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store %struct.cfg80211_connect_params* %26, %struct.cfg80211_connect_params** %7, align 8
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %224 [
    i32 129, label %32
    i32 128, label %35
    i32 132, label %38
    i32 131, label %87
    i32 135, label %92
    i32 133, label %196
    i32 134, label %199
    i32 130, label %211
    i32 136, label %221
  ]

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %225

35:                                               ; preds = %22
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %37 = call i32 @cfg80211_conn_scan(%struct.wireless_dev* %36)
  store i32 %37, i32* %3, align 4
  br label %225

38:                                               ; preds = %22
  %39 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %225

52:                                               ; preds = %38
  %53 = load i32, i32* @CFG80211_CONN_AUTHENTICATING, align 4
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %63 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %66 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %69 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %72 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %75 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %78 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %81 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %84 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cfg80211_mlme_auth(%struct.cfg80211_registered_device* %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76, i32* null, i32 0, i32 %79, i32 %82, i32 %85, i32* null, i32 0)
  store i32 %86, i32* %3, align 4
  br label %225

87:                                               ; preds = %22
  %88 = load i32, i32* @NL80211_TIMEOUT_AUTH, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @ENOTCONN, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %225

92:                                               ; preds = %22
  %93 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %94 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @WARN_ON(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %225

106:                                              ; preds = %92
  %107 = load i32, i32* @CFG80211_CONN_ASSOCIATING, align 4
  %108 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %109 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %113 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %106
  %119 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %120 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 9
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %106
  %126 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %127 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %131 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 7
  store i32 %132, i32* %133, align 4
  %134 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %135 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NL80211_MFP_NO, align 4
  %138 = icmp ne i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %142 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 6
  store i32 %143, i32* %144, align 4
  %145 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %146 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 5
  store i32 %147, i32* %148, align 4
  %149 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %150 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 4
  store i32 %151, i32* %152, align 4
  %153 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %154 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %158 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 2
  store i32 %159, i32* %160, align 4
  %161 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %162 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %8, i32 0, i32 1
  store i32 %163, i32* %164, align 4
  %165 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %166 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %167 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %170 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %173 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %176 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %179 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @cfg80211_mlme_assoc(%struct.cfg80211_registered_device* %165, i32 %168, i32 %171, i32 %174, i32 %177, i32 %180, %struct.cfg80211_assoc_request* %8)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %125
  %185 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %186 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %187 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %190 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %193 = call i32 @cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %185, i32 %188, i32 %191, i32* null, i32 0, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %184, %125
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %3, align 4
  br label %225

196:                                              ; preds = %22
  %197 = load i32, i32* @NL80211_TIMEOUT_ASSOC, align 4
  %198 = load i32*, i32** %5, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %22, %196
  %200 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %201 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %202 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %205 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %208 = call i32 @cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %200, i32 %203, i32 %206, i32* null, i32 0, i32 %207, i32 0)
  %209 = load i32, i32* @ENOTCONN, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %225

211:                                              ; preds = %22
  %212 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %213 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %214 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %217 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %220 = call i32 @cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %212, i32 %215, i32 %218, i32* null, i32 0, i32 %219, i32 0)
  br label %221

221:                                              ; preds = %22, %211
  %222 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %223 = call i32 @cfg80211_sme_free(%struct.wireless_dev* %222)
  store i32 0, i32* %3, align 4
  br label %225

224:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %225

225:                                              ; preds = %224, %221, %199, %194, %103, %87, %52, %49, %35, %32, %21
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_conn_scan(%struct.wireless_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_mlme_auth(%struct.cfg80211_registered_device*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @cfg80211_mlme_assoc(%struct.cfg80211_registered_device*, i32, i32, i32, i32, i32, %struct.cfg80211_assoc_request*) #1

declare dso_local i32 @cfg80211_mlme_deauth(%struct.cfg80211_registered_device*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_sme_free(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
