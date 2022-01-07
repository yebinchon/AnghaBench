; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.key_params = type { i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.TYPE_6__, %struct.ieee80211_local* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.ieee80211_cipher_scheme* }
%struct.ieee80211_cipher_scheme = type { i32 }
%struct.ieee80211_key = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@NL80211_KEY_SET_TX = common dso_local global i64 0, align 8
@fips_enabled = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_KEY_NO_TX = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_NO_AUTO_TX = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_MFP_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@IEEE80211_MESH_SEC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32, i32*, %struct.key_params*)* @ieee80211_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_add_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32* %4, %struct.key_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.key_params*, align 8
  %14 = alloca %struct.ieee80211_sub_if_data*, align 8
  %15 = alloca %struct.ieee80211_local*, align 8
  %16 = alloca %struct.sta_info*, align 8
  %17 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %18 = alloca %struct.ieee80211_key*, align 8
  %19 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.key_params* %5, %struct.key_params** %13, align 8
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %20)
  store %struct.ieee80211_sub_if_data* %21, %struct.ieee80211_sub_if_data** %14, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 2
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  store %struct.ieee80211_local* %24, %struct.ieee80211_local** %15, align 8
  store %struct.sta_info* null, %struct.sta_info** %16, align 8
  store %struct.ieee80211_cipher_scheme* null, %struct.ieee80211_cipher_scheme** %17, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %26 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENETDOWN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %196

31:                                               ; preds = %6
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.key_params*, %struct.key_params** %13, align 8
  %36 = getelementptr inbounds %struct.key_params, %struct.key_params* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_KEY_SET_TX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @ieee80211_set_tx(%struct.ieee80211_sub_if_data* %41, i32* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %196

45:                                               ; preds = %34, %31
  %46 = load %struct.key_params*, %struct.key_params** %13, align 8
  %47 = getelementptr inbounds %struct.key_params, %struct.key_params* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %58 [
    i32 128, label %49
    i32 130, label %49
    i32 129, label %49
    i32 134, label %57
    i32 133, label %57
    i32 138, label %57
    i32 137, label %57
    i32 136, label %57
    i32 135, label %57
    i32 132, label %57
    i32 131, label %57
  ]

49:                                               ; preds = %45, %45, %45
  %50 = load i32, i32* @fips_enabled, align 4
  %51 = call i32 @WARN_ON_ONCE(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %196

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %56
  br label %68

58:                                               ; preds = %45
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %60 = load %struct.key_params*, %struct.key_params** %13, align 8
  %61 = getelementptr inbounds %struct.key_params, %struct.key_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.ieee80211_cipher_scheme* @ieee80211_cs_get(%struct.ieee80211_local* %59, i32 %62, i32 %66)
  store %struct.ieee80211_cipher_scheme* %67, %struct.ieee80211_cipher_scheme** %17, align 8
  br label %68

68:                                               ; preds = %58, %57
  %69 = load %struct.key_params*, %struct.key_params** %13, align 8
  %70 = getelementptr inbounds %struct.key_params, %struct.key_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.key_params*, %struct.key_params** %13, align 8
  %74 = getelementptr inbounds %struct.key_params, %struct.key_params* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.key_params*, %struct.key_params** %13, align 8
  %77 = getelementptr inbounds %struct.key_params, %struct.key_params* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.key_params*, %struct.key_params** %13, align 8
  %80 = getelementptr inbounds %struct.key_params, %struct.key_params* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.key_params*, %struct.key_params** %13, align 8
  %83 = getelementptr inbounds %struct.key_params, %struct.key_params* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %17, align 8
  %86 = call %struct.ieee80211_key* @ieee80211_key_alloc(i32 %71, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84, %struct.ieee80211_cipher_scheme* %85)
  store %struct.ieee80211_key* %86, %struct.ieee80211_key** %18, align 8
  %87 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %88 = call i64 @IS_ERR(%struct.ieee80211_key* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %68
  %91 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %92 = call i32 @PTR_ERR(%struct.ieee80211_key* %91)
  store i32 %92, i32* %7, align 4
  br label %196

93:                                               ; preds = %68
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %98 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %99 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %93
  %104 = load %struct.key_params*, %struct.key_params** %13, align 8
  %105 = getelementptr inbounds %struct.key_params, %struct.key_params* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NL80211_KEY_NO_TX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* @IEEE80211_KEY_FLAG_NO_AUTO_TX, align 4
  %111 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %112 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %109, %103
  %117 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %118 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %117, i32 0, i32 0
  %119 = call i32 @mutex_lock(i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %116
  %123 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %123, i32* %124)
  store %struct.sta_info* %125, %struct.sta_info** %16, align 8
  %126 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %127 = icmp ne %struct.sta_info* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %130 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %131 = call i64 @test_sta_flag(%struct.sta_info* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128, %122
  %134 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %135 = call i32 @ieee80211_key_free_unused(%struct.ieee80211_key* %134)
  %136 = load i32, i32* @ENOENT, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %19, align 4
  br label %191

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  switch i32 %143, label %179 [
    i32 142, label %144
    i32 151, label %160
    i32 150, label %160
    i32 152, label %176
    i32 149, label %177
    i32 140, label %177
    i32 148, label %177
    i32 144, label %177
    i32 147, label %177
    i32 141, label %177
    i32 139, label %177
    i32 145, label %177
    i32 143, label %177
    i32 146, label %177
  ]

144:                                              ; preds = %139
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IEEE80211_MFP_DISABLED, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %154 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %155 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %152, %144
  br label %179

160:                                              ; preds = %139, %139
  %161 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %162 = icmp ne %struct.sta_info* %161, null
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %165 = load i32, i32* @WLAN_STA_MFP, align 4
  %166 = call i64 @test_sta_flag(%struct.sta_info* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %170 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %171 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %168, %163, %160
  br label %179

176:                                              ; preds = %139
  br label %179

177:                                              ; preds = %139, %139, %139, %139, %139, %139, %139, %139, %139, %139
  %178 = call i32 @WARN_ON_ONCE(i32 1)
  br label %179

179:                                              ; preds = %139, %177, %176, %175, %159
  %180 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %181 = icmp ne %struct.sta_info* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %17, align 8
  %184 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %185 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %184, i32 0, i32 0
  store %struct.ieee80211_cipher_scheme* %183, %struct.ieee80211_cipher_scheme** %185, align 8
  br label %186

186:                                              ; preds = %182, %179
  %187 = load %struct.ieee80211_key*, %struct.ieee80211_key** %18, align 8
  %188 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %14, align 8
  %189 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %190 = call i32 @ieee80211_key_link(%struct.ieee80211_key* %187, %struct.ieee80211_sub_if_data* %188, %struct.sta_info* %189)
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %186, %133
  %192 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  %193 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %192, i32 0, i32 0
  %194 = call i32 @mutex_unlock(i32* %193)
  %195 = load i32, i32* %19, align 4
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %191, %90, %53, %40, %28
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_set_tx(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ieee80211_cipher_scheme* @ieee80211_cs_get(%struct.ieee80211_local*, i32, i32) #1

declare dso_local %struct.ieee80211_key* @ieee80211_key_alloc(i32, i32, i32, i32, i32, i32, %struct.ieee80211_cipher_scheme*) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_key*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_key*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_key_free_unused(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_link(%struct.ieee80211_key*, %struct.ieee80211_sub_if_data*, %struct.sta_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
