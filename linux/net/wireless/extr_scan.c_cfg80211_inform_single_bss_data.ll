; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_inform_single_bss_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_inform_single_bss_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.ieee80211_channel*, i32 }
%struct.ieee80211_channel = type { i64, i64 }
%struct.wiphy = type { i64, i64 }
%struct.cfg80211_inform_bss = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cfg80211_non_tx_bss = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_bss_ies = type { i64, i32, i32, i32 }
%struct.cfg80211_internal_bss = type { %struct.cfg80211_bss, i32 }
%struct.TYPE_4__ = type { i64 }

@CFG80211_SIGNAL_TYPE_UNSPEC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@NL80211_BAND_60GHZ = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_DMG_TYPE_MASK = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DMG_TYPE_AP = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_DMG_TYPE_PBSS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_bss* (%struct.wiphy*, %struct.cfg80211_inform_bss*, i32, i32*, i32, i8*, i8*, i32*, i64, %struct.cfg80211_non_tx_bss*, i32)* @cfg80211_inform_single_bss_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_bss* @cfg80211_inform_single_bss_data(%struct.wiphy* %0, %struct.cfg80211_inform_bss* %1, i32 %2, i32* %3, i32 %4, i8* %5, i8* %6, i32* %7, i64 %8, %struct.cfg80211_non_tx_bss* %9, i32 %10) #0 {
  %12 = alloca %struct.cfg80211_bss*, align 8
  %13 = alloca %struct.wiphy*, align 8
  %14 = alloca %struct.cfg80211_inform_bss*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.cfg80211_non_tx_bss*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.cfg80211_registered_device*, align 8
  %25 = alloca %struct.cfg80211_bss_ies*, align 8
  %26 = alloca %struct.ieee80211_channel*, align 8
  %27 = alloca %struct.cfg80211_internal_bss, align 8
  %28 = alloca %struct.cfg80211_internal_bss*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %13, align 8
  store %struct.cfg80211_inform_bss* %1, %struct.cfg80211_inform_bss** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i64 %8, i64* %21, align 8
  store %struct.cfg80211_non_tx_bss* %9, %struct.cfg80211_non_tx_bss** %22, align 8
  store i32 %10, i32* %23, align 4
  %32 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %33 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %32)
  store %struct.cfg80211_registered_device* %33, %struct.cfg80211_registered_device** %24, align 8
  %34 = bitcast %struct.cfg80211_internal_bss* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 72, i1 false)
  %35 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %36 = icmp ne %struct.wiphy* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %11
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %12, align 8
  br label %275

42:                                               ; preds = %11
  %43 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %44 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CFG80211_SIGNAL_TYPE_UNSPEC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %50 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %55 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 100
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ true, %48 ], [ %57, %53 ]
  br label %60

60:                                               ; preds = %58, %42
  %61 = phi i1 [ false, %42 ], [ %59, %58 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %12, align 8
  br label %275

66:                                               ; preds = %60
  %67 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %71 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %74 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.ieee80211_channel* @cfg80211_get_bss_channel(%struct.wiphy* %67, i32* %68, i64 %69, %struct.TYPE_3__* %72, i32 %75)
  store %struct.ieee80211_channel* %76, %struct.ieee80211_channel** %26, align 8
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %78 = icmp ne %struct.ieee80211_channel* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %12, align 8
  br label %275

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %82 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = load i64, i64* @ETH_ALEN, align 8
  %86 = call i32 @memcpy(i32 %83, i32* %84, i64 %85)
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %88 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %89 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %88, i32 0, i32 10
  store %struct.ieee80211_channel* %87, %struct.ieee80211_channel** %89, align 8
  %90 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %91 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %94 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %96 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %99 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %102 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %106 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %108 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  %111 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %112 = icmp ne %struct.cfg80211_non_tx_bss* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %80
  %114 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %115 = getelementptr inbounds %struct.cfg80211_non_tx_bss, %struct.cfg80211_non_tx_bss* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %118 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  %119 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %120 = getelementptr inbounds %struct.cfg80211_non_tx_bss, %struct.cfg80211_non_tx_bss* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.TYPE_4__* @bss_from_pub(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %31, align 8
  %125 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %126 = getelementptr inbounds %struct.cfg80211_non_tx_bss, %struct.cfg80211_non_tx_bss* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %129 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 8
  %130 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %131 = getelementptr inbounds %struct.cfg80211_non_tx_bss, %struct.cfg80211_non_tx_bss* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %134 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  br label %137

135:                                              ; preds = %80
  %136 = load i64, i64* @jiffies, align 8
  store i64 %136, i64* %31, align 8
  br label %137

137:                                              ; preds = %135, %113
  %138 = load i64, i64* %21, align 8
  %139 = add i64 24, %138
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* %23, align 4
  %142 = call %struct.cfg80211_bss_ies* @kzalloc(i32 %140, i32 %141)
  store %struct.cfg80211_bss_ies* %142, %struct.cfg80211_bss_ies** %25, align 8
  %143 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %144 = icmp ne %struct.cfg80211_bss_ies* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %12, align 8
  br label %275

146:                                              ; preds = %137
  %147 = load i64, i64* %21, align 8
  %148 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %149 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %152 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %154 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %153, i32 0, i32 1
  store i32 0, i32* %154, align 8
  %155 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %156 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %20, align 8
  %159 = load i64, i64* %21, align 8
  %160 = call i32 @memcpy(i32 %157, i32* %158, i64 %159)
  %161 = load i32, i32* %15, align 4
  switch i32 %161, label %177 [
    i32 130, label %162
    i32 128, label %165
    i32 129, label %171
  ]

162:                                              ; preds = %146
  %163 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %164 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %163, i32 0, i32 1
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %146, %162
  %166 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %167 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %170 = call i32 @rcu_assign_pointer(i32 %168, %struct.cfg80211_bss_ies* %169)
  br label %177

171:                                              ; preds = %146
  %172 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %173 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %176 = call i32 @rcu_assign_pointer(i32 %174, %struct.cfg80211_bss_ies* %175)
  br label %177

177:                                              ; preds = %146, %171, %165
  %178 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %27, i32 0, i32 0
  %179 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %25, align 8
  %182 = call i32 @rcu_assign_pointer(i32 %180, %struct.cfg80211_bss_ies* %181)
  %183 = load %struct.cfg80211_inform_bss*, %struct.cfg80211_inform_bss** %14, align 8
  %184 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %183, i32 0, i32 1
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %189 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %187, %190
  %192 = call i64 @abs(i64 %191)
  %193 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %194 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sle i64 %192, %195
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %30, align 4
  %198 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %199 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %198)
  %200 = load i32, i32* %30, align 4
  %201 = load i64, i64* %31, align 8
  %202 = call %struct.cfg80211_internal_bss* @cfg80211_bss_update(%struct.cfg80211_registered_device* %199, %struct.cfg80211_internal_bss* %27, i32 %200, i64 %201)
  store %struct.cfg80211_internal_bss* %202, %struct.cfg80211_internal_bss** %28, align 8
  %203 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %204 = icmp ne %struct.cfg80211_internal_bss* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %177
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %12, align 8
  br label %275

206:                                              ; preds = %177
  %207 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %208 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @NL80211_BAND_60GHZ, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %232

212:                                              ; preds = %206
  %213 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %214 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_MASK, align 4
  %218 = and i32 %216, %217
  store i32 %218, i32* %29, align 4
  %219 = load i32, i32* %29, align 4
  %220 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_AP, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %212
  %223 = load i32, i32* %29, align 4
  %224 = load i32, i32* @WLAN_CAPABILITY_DMG_TYPE_PBSS, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %222, %212
  %227 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %228 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %229 = load i32, i32* %23, align 4
  %230 = call i32 @regulatory_hint_found_beacon(%struct.wiphy* %227, %struct.ieee80211_channel* %228, i32 %229)
  br label %231

231:                                              ; preds = %226, %222
  br label %246

232:                                              ; preds = %206
  %233 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %234 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %232
  %241 = load %struct.wiphy*, %struct.wiphy** %13, align 8
  %242 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %243 = load i32, i32* %23, align 4
  %244 = call i32 @regulatory_hint_found_beacon(%struct.wiphy* %241, %struct.ieee80211_channel* %242, i32 %243)
  br label %245

245:                                              ; preds = %240, %232
  br label %246

246:                                              ; preds = %245, %231
  %247 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %248 = icmp ne %struct.cfg80211_non_tx_bss* %247, null
  br i1 %248, label %249, label %269

249:                                              ; preds = %246
  %250 = load %struct.cfg80211_non_tx_bss*, %struct.cfg80211_non_tx_bss** %22, align 8
  %251 = getelementptr inbounds %struct.cfg80211_non_tx_bss, %struct.cfg80211_non_tx_bss* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %254 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %253, i32 0, i32 0
  %255 = call i64 @cfg80211_add_nontrans_list(i32 %252, %struct.cfg80211_bss* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %249
  %258 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %24, align 8
  %259 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %260 = call i64 @__cfg80211_unlink_bss(%struct.cfg80211_registered_device* %258, %struct.cfg80211_internal_bss* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %24, align 8
  %264 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %262, %257
  br label %268

268:                                              ; preds = %267, %249
  br label %269

269:                                              ; preds = %268, %246
  %270 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %271 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %270, i32 0, i32 0
  %272 = call i32 @trace_cfg80211_return_bss(%struct.cfg80211_bss* %271)
  %273 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %28, align 8
  %274 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %273, i32 0, i32 0
  store %struct.cfg80211_bss* %274, %struct.cfg80211_bss** %12, align 8
  br label %275

275:                                              ; preds = %269, %205, %145, %79, %65, %41
  %276 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %12, align 8
  ret %struct.cfg80211_bss* %276
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_channel* @cfg80211_get_bss_channel(%struct.wiphy*, i32*, i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local %struct.TYPE_4__* @bss_from_pub(i32) #1

declare dso_local %struct.cfg80211_bss_ies* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cfg80211_bss_ies*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local %struct.cfg80211_internal_bss* @cfg80211_bss_update(%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*, i32, i64) #1

declare dso_local i32 @regulatory_hint_found_beacon(%struct.wiphy*, %struct.ieee80211_channel*, i32) #1

declare dso_local i64 @cfg80211_add_nontrans_list(i32, %struct.cfg80211_bss*) #1

declare dso_local i64 @__cfg80211_unlink_bss(%struct.cfg80211_registered_device*, %struct.cfg80211_internal_bss*) #1

declare dso_local i32 @trace_cfg80211_return_bss(%struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
