; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mgd_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_6__ }
%struct.ieee80211_local = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.ieee80211_mgd_auth_data*, i32, %struct.TYPE_7__*, i64 }
%struct.ieee80211_mgd_auth_data = type { i32, i64, i32, %struct.TYPE_9__*, i64, i32, i32*, i32, i32*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_auth_request = type { i32, i32, i32, i32, %struct.TYPE_9__*, i64, i32, i64, i64 }

@WLAN_AUTH_OPEN = common dso_local global i32 0, align 4
@fips_enabled = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@WLAN_AUTH_FT = common dso_local global i32 0, align 4
@WLAN_AUTH_LEAP = common dso_local global i32 0, align 4
@WLAN_AUTH_SAE = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_SK = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_SK_PFS = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_PK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"disconnect from AP %pM for new auth to %pM\0A\00", align 1
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"authenticate with %pM\0A\00", align 1
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgd_auth(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_auth_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_auth_request*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.ieee80211_mgd_auth_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_auth_request* %1, %struct.cfg80211_auth_request** %5, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %6, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.ieee80211_if_managed* %20, %struct.ieee80211_if_managed** %7, align 8
  %21 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %46 [
    i32 130, label %24
    i32 128, label %26
    i32 132, label %34
    i32 131, label %36
    i32 129, label %38
    i32 134, label %40
    i32 133, label %42
    i32 135, label %44
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @WLAN_AUTH_OPEN, align 4
  store i32 %25, i32* %9, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load i32, i32* @fips_enabled, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %365

32:                                               ; preds = %26
  %33 = load i32, i32* @WLAN_AUTH_SHARED_KEY, align 4
  store i32 %33, i32* %9, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load i32, i32* @WLAN_AUTH_FT, align 4
  store i32 %35, i32* %9, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load i32, i32* @WLAN_AUTH_LEAP, align 4
  store i32 %37, i32* %9, align 4
  br label %49

38:                                               ; preds = %2
  %39 = load i32, i32* @WLAN_AUTH_SAE, align 4
  store i32 %39, i32* %9, align 4
  br label %49

40:                                               ; preds = %2
  %41 = load i32, i32* @WLAN_AUTH_FILS_SK, align 4
  store i32 %41, i32* %9, align 4
  br label %49

42:                                               ; preds = %2
  %43 = load i32, i32* @WLAN_AUTH_FILS_SK_PFS, align 4
  store i32 %43, i32* %9, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load i32, i32* @WLAN_AUTH_FILS_PK, align 4
  store i32 %45, i32* %9, align 4
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %365

49:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %24
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %365

57:                                               ; preds = %49
  %58 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %59 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 80, %61
  %63 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %64 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add i64 %62, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.ieee80211_mgd_auth_data* @kzalloc(i32 %68, i32 %69)
  store %struct.ieee80211_mgd_auth_data* %70, %struct.ieee80211_mgd_auth_data** %8, align 8
  %71 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %72 = icmp ne %struct.ieee80211_mgd_auth_data* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %57
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %365

76:                                               ; preds = %57
  %77 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %78 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %80, i32 0, i32 3
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %81, align 8
  %82 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %83 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %84, 4
  br i1 %85, label %86, label %131

86:                                               ; preds = %76
  %87 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %88 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 129
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %93 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %91, %86
  %110 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %114 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 4
  %117 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %118 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 4
  %121 = call i32 @memcpy(i32* %112, i64 %116, i32 %120)
  %122 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %123 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %109, %76
  %132 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %132, i32 0, i32 0
  %134 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %133, align 8
  %135 = icmp ne %struct.ieee80211_mgd_auth_data* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %138 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %137, i32 0, i32 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %140, i32 0, i32 0
  %142 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %141, align 8
  %143 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = icmp eq %struct.TYPE_9__* %139, %144
  br label %146

146:                                              ; preds = %136, %131
  %147 = phi i1 [ false, %131 ], [ %145, %136 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %11, align 4
  %149 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %150 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %146
  %154 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %155 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %153
  %159 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %160 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %159, i32 0, i32 8
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %163 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %167 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %170 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @memcpy(i32* %165, i64 %168, i32 %171)
  %173 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %174 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %178 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %158, %153, %146
  %182 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %183 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %212

186:                                              ; preds = %181
  %187 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %188 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %212

191:                                              ; preds = %186
  %192 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %193 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %196 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %198 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 8
  %202 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %203 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %206 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %209 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @memcpy(i32* %204, i64 %207, i32 %210)
  br label %212

212:                                              ; preds = %191, %186, %181
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %215 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 8
  %216 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %217 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %216, i32 0, i32 0
  %218 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %217, align 8
  %219 = icmp ne %struct.ieee80211_mgd_auth_data* %218, null
  br i1 %219, label %220, label %240

220:                                              ; preds = %212
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %220
  %224 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %225 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 129
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %230 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %229, i32 0, i32 0
  %231 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %230, align 8
  %232 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %235 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %234, i32 0, i32 4
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %228, %223, %220
  %237 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %237, i32 %238)
  br label %240

240:                                              ; preds = %236, %212
  %241 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %242 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %243 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %242, i32 0, i32 0
  store %struct.ieee80211_mgd_auth_data* %241, %struct.ieee80211_mgd_auth_data** %243, align 8
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %269

246:                                              ; preds = %240
  %247 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %248 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 129
  br i1 %250, label %251, label %269

251:                                              ; preds = %246
  %252 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %253 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %251
  %257 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %258 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %269

261:                                              ; preds = %256
  %262 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %263 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %264 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %263, i32 0, i32 4
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @ieee80211_mark_sta_auth(%struct.ieee80211_sub_if_data* %262, i32 %267)
  br label %269

269:                                              ; preds = %261, %256, %251, %246, %240
  %270 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %271 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %270, i32 0, i32 2
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = icmp ne %struct.TYPE_7__* %272, null
  br i1 %273, label %274, label %301

274:                                              ; preds = %269
  %275 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %276 = zext i32 %275 to i64
  %277 = call i8* @llvm.stacksave()
  store i8* %277, i8** %13, align 8
  %278 = alloca i32, i64 %276, align 16
  store i64 %276, i64* %14, align 8
  %279 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %280 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %281 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %280, i32 0, i32 2
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %286 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %285, i32 0, i32 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %279, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %284, i32 %289)
  %291 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %292 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %293 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %294 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %291, i32 %292, i32 %293, i32 0, i32* %278)
  %295 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %296 = mul nuw i64 4, %276
  %297 = trunc i64 %296 to i32
  %298 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %299 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %295, i32* %278, i32 %297, i32 1, i32 %298)
  %300 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %300)
  br label %301

301:                                              ; preds = %274, %269
  %302 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %303 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %304 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %303, i32 0, i32 4
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %302, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %307)
  %309 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %310 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %311 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %310, i32 0, i32 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %311, align 8
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data* %309, %struct.TYPE_9__* %312, i32 %313, i32 0)
  store i32 %314, i32* %10, align 4
  %315 = load i32, i32* %10, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %301
  br label %340

318:                                              ; preds = %301
  %319 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %320 = call i32 @ieee80211_auth(%struct.ieee80211_sub_if_data* %319)
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %318
  %324 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %325 = load %struct.cfg80211_auth_request*, %struct.cfg80211_auth_request** %5, align 8
  %326 = getelementptr inbounds %struct.cfg80211_auth_request, %struct.cfg80211_auth_request* %325, i32 0, i32 4
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data* %324, i32 %329)
  br label %340

331:                                              ; preds = %318
  %332 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %333 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %337 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %336, i32 0, i32 3
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %337, align 8
  %339 = call i32 @cfg80211_ref_bss(i32 %335, %struct.TYPE_9__* %338)
  store i32 0, i32* %3, align 4
  br label %365

340:                                              ; preds = %323, %317
  %341 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %342 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @eth_zero_addr(i32 %343)
  %345 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %346 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %347 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %345, i32 %346)
  %348 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %349 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %348, i32 0, i32 0
  store %struct.ieee80211_mgd_auth_data* null, %struct.ieee80211_mgd_auth_data** %349, align 8
  %350 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %351 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %350, i32 0, i32 0
  %352 = load %struct.ieee80211_local*, %struct.ieee80211_local** %351, align 8
  %353 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %352, i32 0, i32 0
  %354 = call i32 @mutex_lock(i32* %353)
  %355 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %356 = call i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %355)
  %357 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %358 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %357, i32 0, i32 0
  %359 = load %struct.ieee80211_local*, %struct.ieee80211_local** %358, align 8
  %360 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %359, i32 0, i32 0
  %361 = call i32 @mutex_unlock(i32* %360)
  %362 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %363 = call i32 @kfree(%struct.ieee80211_mgd_auth_data* %362)
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %3, align 4
  br label %365

365:                                              ; preds = %340, %331, %73, %54, %46, %29
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

declare dso_local %struct.ieee80211_mgd_auth_data* @kzalloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_mark_sta_auth(%struct.ieee80211_sub_if_data*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ieee80211_auth(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @sta_info_destroy_addr(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @cfg80211_ref_bss(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ieee80211_mgd_auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
