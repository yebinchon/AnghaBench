; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_sme_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_sme_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_9__*, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.cfg80211_bss }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_connect_params = type { i64, i32, i32, %struct.cfg80211_connect_params* }
%struct.cfg80211_registered_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_AUTOMATIC = common dso_local global i64 0, align 8
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CFG80211_CONN_SCAN_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*, %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params*)* @cfg80211_sme_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_sme_connect(%struct.wireless_dev* %0, %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_connect_params*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.cfg80211_bss*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %14)
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %8, align 8
  %16 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %17 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %3
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %234

32:                                               ; preds = %22
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = call i32 @cfg80211_unhold_bss(%struct.TYPE_10__* %40)
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @cfg80211_put_bss(i32 %44, %struct.cfg80211_bss* %48)
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %51, align 8
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %53 = call i32 @cfg80211_sme_free(%struct.wireless_dev* %52)
  br label %54

54:                                               ; preds = %37, %32
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i64 @WARN_ON(%struct.TYPE_9__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EINPROGRESS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %234

63:                                               ; preds = %54
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.TYPE_9__* @kzalloc(i32 72, i32 %64)
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 0
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %67, align 8
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %234

75:                                               ; preds = %63
  %76 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %77 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 4
  %80 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %81 = call i32 @memcpy(%struct.TYPE_8__* %79, %struct.cfg80211_connect_params* %80, i32 24)
  %82 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %83 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %82, i32 0, i32 3
  %84 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %83, align 8
  %85 = icmp ne %struct.cfg80211_connect_params* %84, null
  br i1 %85, label %86, label %107

86:                                               ; preds = %75
  %87 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %88 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %98 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %103 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %102, i32 0, i32 3
  %104 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %103, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @memcpy(%struct.TYPE_8__* %101, %struct.cfg80211_connect_params* %104, i32 %105)
  br label %107

107:                                              ; preds = %86, %75
  %108 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %109 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %110 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %113 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %116 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 5
  %119 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %120 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 4
  %124 = call i64 @cfg80211_sme_get_conn_ies(%struct.wireless_dev* %108, i32 %111, i32 %114, i32* %118, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %107
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %128 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = call i32 @kfree(%struct.TYPE_9__* %129)
  %131 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %132 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %131, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %132, align 8
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %234

135:                                              ; preds = %107
  %136 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %137 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %142 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  store i32 %140, i32* %145, align 4
  %146 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %6, align 8
  %147 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @NL80211_AUTHTYPE_AUTOMATIC, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %135
  %152 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %153 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* @NL80211_AUTHTYPE_OPEN_SYSTEM, align 4
  %157 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %158 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  store i32 %156, i32* %161, align 8
  br label %167

162:                                              ; preds = %135
  %163 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %164 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %151
  %168 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %169 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %172 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %171, i32 0, i32 0
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i32 %170, i32* %175, align 4
  %176 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %177 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %180 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 %178, i32* %183, align 8
  %184 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %185 = call %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev* %184)
  store %struct.cfg80211_bss* %185, %struct.cfg80211_bss** %9, align 8
  %186 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %187 = icmp ne %struct.cfg80211_connect_params* %186, null
  br i1 %187, label %188, label %201

188:                                              ; preds = %167
  %189 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %190 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %189, i32 0, i32 0
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %195 = load i32, i32* @ETH_ALEN, align 4
  %196 = call i32 @memcpy(%struct.TYPE_8__* %193, %struct.cfg80211_connect_params* %194, i32 %195)
  %197 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %198 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %197, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %188, %167
  %202 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %203 = icmp ne %struct.cfg80211_bss* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %206 = call i32 @cfg80211_conn_do_work(%struct.wireless_dev* %205, i32* %11)
  store i32 %206, i32* %10, align 4
  %207 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %208 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %9, align 8
  %211 = call i32 @cfg80211_put_bss(i32 %209, %struct.cfg80211_bss* %210)
  br label %226

212:                                              ; preds = %201
  %213 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %214 = call i32 @cfg80211_conn_scan(%struct.wireless_dev* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @EBUSY, align 4
  %217 = sub nsw i32 0, %216
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  store i32 0, i32* %10, align 4
  %220 = load i32, i32* @CFG80211_CONN_SCAN_AGAIN, align 4
  %221 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %222 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %221, i32 0, i32 0
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  store i32 %220, i32* %224, align 8
  br label %225

225:                                              ; preds = %219, %212
  br label %226

226:                                              ; preds = %225, %204
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %231 = call i32 @cfg80211_sme_free(%struct.wireless_dev* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %232, %126, %72, %60, %29
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_10__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_sme_free(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.cfg80211_connect_params*, i32) #1

declare dso_local i64 @cfg80211_sme_get_conn_ies(%struct.wireless_dev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_conn_do_work(%struct.wireless_dev*, i32*) #1

declare dso_local i32 @cfg80211_conn_scan(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
