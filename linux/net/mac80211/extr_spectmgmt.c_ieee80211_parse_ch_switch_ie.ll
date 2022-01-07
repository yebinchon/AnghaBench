; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_spectmgmt.c_ieee80211_parse_ch_switch_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_spectmgmt.c_ieee80211_parse_ch_switch_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.ieee802_11_elems = type { i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.ieee80211_wide_bw_chansw_ie*, %struct.ieee80211_sec_chan_offs_ie* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32* }
%struct.ieee80211_wide_bw_chansw_ie = type { i32, i32, i32 }
%struct.ieee80211_sec_chan_offs_ie = type { i32 }
%struct.ieee80211_csa_ie = type { i32, i32, %struct.cfg80211_chan_def, i8*, i8*, i32, i32 }
%struct.cfg80211_chan_def = type { i64, i32* }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_vht_operation = type { i32, i32, i32 }
%struct.ieee80211_ht_operation = type { i32 }

@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_40MHZ = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cannot understand ECSA IE operating class, %d, ignoring\0A\00", align 1
@WLAN_EID_CHAN_SWITCH_PARAM_REASON = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"BSS %pM switches to unsupported channel (%d MHz), disconnecting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_80P80MHZ = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_160MHZ = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_160 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"BSS %pM: CSA has inconsistent channel data, disconnecting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_parse_ch_switch_ie(%struct.ieee80211_sub_if_data* %0, %struct.ieee802_11_elems* %1, i32 %2, i32 %3, i32* %4, %struct.ieee80211_csa_ie* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ieee802_11_elems*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ieee80211_csa_ie*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_channel*, align 8
  %18 = alloca %struct.cfg80211_chan_def, align 8
  %19 = alloca %struct.ieee80211_sec_chan_offs_ie*, align 8
  %20 = alloca %struct.ieee80211_wide_bw_chansw_ie*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ieee80211_vht_operation, align 4
  %23 = alloca %struct.ieee80211_ht_operation, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %8, align 8
  store %struct.ieee802_11_elems* %1, %struct.ieee802_11_elems** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.ieee80211_csa_ie* %5, %struct.ieee80211_csa_ie** %13, align 8
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %14, align 4
  %25 = bitcast %struct.cfg80211_chan_def* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 16, i1 false)
  store i32 -1, i32* %21, align 4
  %26 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %27 = call i32 @memset(%struct.ieee80211_csa_ie* %26, i32 0, i32 48)
  %28 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %29 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %28, i32 0, i32 5
  %30 = load %struct.ieee80211_sec_chan_offs_ie*, %struct.ieee80211_sec_chan_offs_ie** %29, align 8
  store %struct.ieee80211_sec_chan_offs_ie* %30, %struct.ieee80211_sec_chan_offs_ie** %19, align 8
  %31 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %32 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %31, i32 0, i32 4
  %33 = load %struct.ieee80211_wide_bw_chansw_ie*, %struct.ieee80211_wide_bw_chansw_ie** %32, align 8
  store %struct.ieee80211_wide_bw_chansw_ie* %33, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %36 = load i32, i32* @IEEE80211_STA_DISABLE_40MHZ, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %6
  store %struct.ieee80211_sec_chan_offs_ie* null, %struct.ieee80211_sec_chan_offs_ie** %19, align 8
  store %struct.ieee80211_wide_bw_chansw_ie* null, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  br label %41

41:                                               ; preds = %40, %6
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store %struct.ieee80211_wide_bw_chansw_ie* null, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  br label %47

47:                                               ; preds = %46, %41
  %48 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %49 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = icmp ne %struct.TYPE_9__* %50, null
  br i1 %51, label %52, label %88

52:                                               ; preds = %47
  %53 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %54 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ieee80211_operating_class_to_band(i32* %57, i32* %14)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %62 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %63 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %61, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32* %66)
  br label %68

68:                                               ; preds = %60, %52
  %69 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %70 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %16, align 4
  %74 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %75 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %80 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %82 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %87 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %115

88:                                               ; preds = %47
  %89 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %90 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp ne %struct.TYPE_10__* %91, null
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %95 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %16, align 4
  %99 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %100 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %105 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %107 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %106, i32 0, i32 2
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %112 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %114

113:                                              ; preds = %88
  store i32 1, i32* %7, align 4
  br label %351

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %68
  %116 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %117 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = icmp ne %struct.TYPE_11__* %118, null
  br i1 %119, label %120, label %161

120:                                              ; preds = %115
  %121 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %122 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %127 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %129 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %134 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %136 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @le16_to_cpu(i32 %139)
  %141 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %142 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %144 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %143, i32 0, i32 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WLAN_EID_CHAN_SWITCH_PARAM_REASON, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %120
  %152 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %153 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @le16_to_cpu(i32 %156)
  %158 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %159 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %151, %120
  br label %161

161:                                              ; preds = %160, %115
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @ieee80211_channel_to_frequency(i32 %162, i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %165, i32 0, i32 0
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %170, i32 %171)
  store %struct.ieee80211_channel* %172, %struct.ieee80211_channel** %17, align 8
  %173 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %174 = icmp ne %struct.ieee80211_channel* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %161
  %176 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %177 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %175, %161
  %183 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = load i32, i32* %15, align 4
  %186 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %183, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32* %184, i32 %185)
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %7, align 4
  br label %351

189:                                              ; preds = %175
  %190 = load %struct.ieee80211_sec_chan_offs_ie*, %struct.ieee80211_sec_chan_offs_ie** %19, align 8
  %191 = icmp ne %struct.ieee80211_sec_chan_offs_ie* %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load %struct.ieee80211_sec_chan_offs_ie*, %struct.ieee80211_sec_chan_offs_ie** %19, align 8
  %194 = getelementptr inbounds %struct.ieee80211_sec_chan_offs_ie, %struct.ieee80211_sec_chan_offs_ie* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %21, align 4
  br label %203

196:                                              ; preds = %189
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  store i32 130, i32* %21, align 4
  br label %202

202:                                              ; preds = %201, %196
  br label %203

203:                                              ; preds = %202, %192
  %204 = load i32, i32* %21, align 4
  switch i32 %204, label %205 [
    i32 130, label %206
    i32 132, label %212
    i32 131, label %218
    i32 -1, label %224
  ]

205:                                              ; preds = %203
  br label %206

206:                                              ; preds = %203, %205
  %207 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %208 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %207, i32 0, i32 2
  %209 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %210 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %211 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %208, %struct.ieee80211_channel* %209, i32 %210)
  br label %248

212:                                              ; preds = %203
  %213 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %214 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %213, i32 0, i32 2
  %215 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %216 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %217 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %214, %struct.ieee80211_channel* %215, i32 %216)
  br label %248

218:                                              ; preds = %203
  %219 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %220 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %219, i32 0, i32 2
  %221 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %222 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %223 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %220, %struct.ieee80211_channel* %221, i32 %222)
  br label %248

224:                                              ; preds = %203
  %225 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %226 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %225, i32 0, i32 2
  %227 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %228 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %229 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %226, %struct.ieee80211_channel* %227, i32 %228)
  %230 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %231 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  switch i64 %235, label %246 [
    i64 128, label %236
    i64 129, label %236
  ]

236:                                              ; preds = %224, %224
  %237 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %238 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %244 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %244, i32 0, i32 0
  store i64 %242, i64* %245, align 8
  br label %247

246:                                              ; preds = %224
  br label %247

247:                                              ; preds = %246, %236
  br label %248

248:                                              ; preds = %247, %218, %212, %206
  %249 = load %struct.ieee80211_wide_bw_chansw_ie*, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  %250 = icmp ne %struct.ieee80211_wide_bw_chansw_ie* %249, null
  br i1 %250, label %251, label %302

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %22, i32 0, i32 0
  %253 = load %struct.ieee80211_wide_bw_chansw_ie*, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  %254 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, %struct.ieee80211_wide_bw_chansw_ie* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %252, align 4
  %256 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %22, i32 0, i32 1
  %257 = load %struct.ieee80211_wide_bw_chansw_ie*, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  %258 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, %struct.ieee80211_wide_bw_chansw_ie* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %256, align 4
  %260 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %22, i32 0, i32 2
  %261 = load %struct.ieee80211_wide_bw_chansw_ie*, %struct.ieee80211_wide_bw_chansw_ie** %20, align 8
  %262 = getelementptr inbounds %struct.ieee80211_wide_bw_chansw_ie, %struct.ieee80211_wide_bw_chansw_ie* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %260, align 4
  %264 = bitcast %struct.ieee80211_ht_operation* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %264, i8 0, i64 4, i1 false)
  %265 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %266 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %265, i32 0, i32 2
  %267 = bitcast %struct.cfg80211_chan_def* %18 to i8*
  %268 = bitcast %struct.cfg80211_chan_def* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 16, i1 false)
  %269 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %270 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %269, i32 0, i32 0
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = call i32 @ieee80211_chandef_vht_oper(%struct.TYPE_16__* %272, %struct.ieee80211_vht_operation* %22, %struct.ieee80211_ht_operation* %23, %struct.cfg80211_chan_def* %18)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %251
  %276 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 1
  store i32* null, i32** %276, align 8
  br label %277

277:                                              ; preds = %275, %251
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* @IEEE80211_STA_DISABLE_80P80MHZ, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @NL80211_CHAN_WIDTH_80P80, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %18)
  br label %289

289:                                              ; preds = %287, %282, %277
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @IEEE80211_STA_DISABLE_160MHZ, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @NL80211_CHAN_WIDTH_160, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = call i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def* %18)
  br label %301

301:                                              ; preds = %299, %294, %289
  br label %302

302:                                              ; preds = %301, %248
  %303 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %322

306:                                              ; preds = %302
  %307 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %308 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %307, i32 0, i32 2
  %309 = call i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def* %18, %struct.cfg80211_chan_def* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %306
  %312 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %313 = load i32*, i32** %12, align 8
  %314 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %312, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32* %313)
  %315 = load i32, i32* @EINVAL, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %7, align 4
  br label %351

317:                                              ; preds = %306
  %318 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %319 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %318, i32 0, i32 2
  %320 = bitcast %struct.cfg80211_chan_def* %319 to i8*
  %321 = bitcast %struct.cfg80211_chan_def* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %320, i8* align 8 %321, i64 16, i1 false)
  br label %322

322:                                              ; preds = %317, %302
  %323 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %324 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %350

327:                                              ; preds = %322
  %328 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %329 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = shl i32 %332, 0
  %334 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %335 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  %338 = load i32, i32* %337, align 4
  %339 = shl i32 %338, 8
  %340 = or i32 %333, %339
  %341 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %342 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 2
  %345 = load i32, i32* %344, align 4
  %346 = shl i32 %345, 16
  %347 = or i32 %340, %346
  %348 = load %struct.ieee80211_csa_ie*, %struct.ieee80211_csa_ie** %13, align 8
  %349 = getelementptr inbounds %struct.ieee80211_csa_ie, %struct.ieee80211_csa_ie* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  br label %350

350:                                              ; preds = %327, %322
  store i32 0, i32* %7, align 4
  br label %351

351:                                              ; preds = %350, %311, %182, %113
  %352 = load i32, i32* %7, align 4
  ret i32 %352
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.ieee80211_csa_ie*, i32, i32) #2

declare dso_local i32 @ieee80211_operating_class_to_band(i32*, i32*) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32*, ...) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #2

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_chandef_vht_oper(%struct.TYPE_16__*, %struct.ieee80211_vht_operation*, %struct.ieee80211_ht_operation*, %struct.cfg80211_chan_def*) #2

declare dso_local i32 @ieee80211_chandef_downgrade(%struct.cfg80211_chan_def*) #2

declare dso_local i32 @cfg80211_chandef_compatible(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
