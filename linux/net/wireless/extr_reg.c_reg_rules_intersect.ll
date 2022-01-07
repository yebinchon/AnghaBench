; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_rules_intersect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_rules_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.ieee80211_reg_rule = type { i32, i64, i32, %struct.ieee80211_wmm_rule, %struct.ieee80211_power_rule, %struct.ieee80211_freq_range }
%struct.ieee80211_wmm_rule = type { i32*, i32* }
%struct.ieee80211_power_rule = type { i64, i64 }
%struct.ieee80211_freq_range = type { i64, i64, i64 }

@NL80211_RRF_AUTO_BW = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*, %struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*)* @reg_rules_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_rules_intersect(%struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain* %1, %struct.ieee80211_reg_rule* %2, %struct.ieee80211_reg_rule* %3, %struct.ieee80211_reg_rule* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  %8 = alloca %struct.ieee80211_regdomain*, align 8
  %9 = alloca %struct.ieee80211_reg_rule*, align 8
  %10 = alloca %struct.ieee80211_reg_rule*, align 8
  %11 = alloca %struct.ieee80211_reg_rule*, align 8
  %12 = alloca %struct.ieee80211_freq_range*, align 8
  %13 = alloca %struct.ieee80211_freq_range*, align 8
  %14 = alloca %struct.ieee80211_freq_range*, align 8
  %15 = alloca %struct.ieee80211_power_rule*, align 8
  %16 = alloca %struct.ieee80211_power_rule*, align 8
  %17 = alloca %struct.ieee80211_power_rule*, align 8
  %18 = alloca %struct.ieee80211_wmm_rule*, align 8
  %19 = alloca %struct.ieee80211_wmm_rule*, align 8
  %20 = alloca %struct.ieee80211_wmm_rule*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %7, align 8
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %8, align 8
  store %struct.ieee80211_reg_rule* %2, %struct.ieee80211_reg_rule** %9, align 8
  store %struct.ieee80211_reg_rule* %3, %struct.ieee80211_reg_rule** %10, align 8
  store %struct.ieee80211_reg_rule* %4, %struct.ieee80211_reg_rule** %11, align 8
  %25 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %25, i32 0, i32 5
  store %struct.ieee80211_freq_range* %26, %struct.ieee80211_freq_range** %12, align 8
  %27 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %28 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %27, i32 0, i32 5
  store %struct.ieee80211_freq_range* %28, %struct.ieee80211_freq_range** %13, align 8
  %29 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %29, i32 0, i32 5
  store %struct.ieee80211_freq_range* %30, %struct.ieee80211_freq_range** %14, align 8
  %31 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %31, i32 0, i32 4
  store %struct.ieee80211_power_rule* %32, %struct.ieee80211_power_rule** %15, align 8
  %33 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %33, i32 0, i32 4
  store %struct.ieee80211_power_rule* %34, %struct.ieee80211_power_rule** %16, align 8
  %35 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %35, i32 0, i32 4
  store %struct.ieee80211_power_rule* %36, %struct.ieee80211_power_rule** %17, align 8
  %37 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %37, i32 0, i32 3
  store %struct.ieee80211_wmm_rule* %38, %struct.ieee80211_wmm_rule** %18, align 8
  %39 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %40 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %39, i32 0, i32 3
  store %struct.ieee80211_wmm_rule* %40, %struct.ieee80211_wmm_rule** %19, align 8
  %41 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %42 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %41, i32 0, i32 3
  store %struct.ieee80211_wmm_rule* %42, %struct.ieee80211_wmm_rule** %20, align 8
  %43 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %44 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %13, align 8
  %47 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @max(i64 %45, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %52 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %13, align 8
  %57 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @min(i64 %55, i64 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %62 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %64 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %22, align 8
  %66 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %13, align 8
  %67 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %23, align 8
  %69 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %70 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %5
  %76 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %77 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %78 = call i64 @reg_get_max_bandwidth(%struct.ieee80211_regdomain* %76, %struct.ieee80211_reg_rule* %77)
  store i64 %78, i64* %22, align 8
  br label %79

79:                                               ; preds = %75, %5
  %80 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %81 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %8, align 8
  %88 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %89 = call i64 @reg_get_max_bandwidth(%struct.ieee80211_regdomain* %87, %struct.ieee80211_reg_rule* %88)
  store i64 %89, i64* %23, align 8
  br label %90

90:                                               ; preds = %86, %79
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %23, align 8
  %93 = call i8* @min(i64 %91, i64 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %96 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %98 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %99, %102
  %104 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %105 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %107 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %90
  %113 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %114 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %121 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %122 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %132

125:                                              ; preds = %112, %90
  %126 = load i32, i32* @NL80211_RRF_AUTO_BW, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %129 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %134 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %137 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  store i64 %139, i64* %21, align 8
  %140 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %141 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %21, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %132
  %146 = load i64, i64* %21, align 8
  %147 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %14, align 8
  %148 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %132
  %150 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %15, align 8
  %151 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %16, align 8
  %154 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @min(i64 %152, i64 %155)
  %157 = ptrtoint i8* %156 to i64
  %158 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %17, align 8
  %159 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %15, align 8
  %161 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %16, align 8
  %164 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @min(i64 %162, i64 %165)
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %17, align 8
  %169 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %171 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %174 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i8* @max(i64 %172, i64 %175)
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %179 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  %180 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %181 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %149
  %185 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %186 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %233

189:                                              ; preds = %184
  store i64 0, i64* %24, align 8
  br label %190

190:                                              ; preds = %227, %189
  %191 = load i64, i64* %24, align 8
  %192 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %230

194:                                              ; preds = %190
  %195 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %18, align 8
  %196 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %24, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %19, align 8
  %201 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* %24, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %20, align 8
  %206 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* %24, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = call i32 @reg_wmm_rules_intersect(i32* %199, i32* %204, i32* %209)
  %211 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %18, align 8
  %212 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %24, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %19, align 8
  %217 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* %24, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %20, align 8
  %222 = getelementptr inbounds %struct.ieee80211_wmm_rule, %struct.ieee80211_wmm_rule* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %24, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = call i32 @reg_wmm_rules_intersect(i32* %215, i32* %220, i32* %225)
  br label %227

227:                                              ; preds = %194
  %228 = load i64, i64* %24, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %24, align 8
  br label %190

230:                                              ; preds = %190
  %231 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %232 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %231, i32 0, i32 2
  store i32 1, i32* %232, align 8
  br label %262

233:                                              ; preds = %184, %149
  %234 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %235 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %20, align 8
  %240 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %18, align 8
  %241 = bitcast %struct.ieee80211_wmm_rule* %239 to i8*
  %242 = bitcast %struct.ieee80211_wmm_rule* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %241, i8* align 8 %242, i64 16, i1 false)
  %243 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %244 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %243, i32 0, i32 2
  store i32 1, i32* %244, align 8
  br label %261

245:                                              ; preds = %233
  %246 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %247 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %20, align 8
  %252 = load %struct.ieee80211_wmm_rule*, %struct.ieee80211_wmm_rule** %19, align 8
  %253 = bitcast %struct.ieee80211_wmm_rule* %251 to i8*
  %254 = bitcast %struct.ieee80211_wmm_rule* %252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 16, i1 false)
  %255 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %256 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %255, i32 0, i32 2
  store i32 1, i32* %256, align 8
  br label %260

257:                                              ; preds = %245
  %258 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %259 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %258, i32 0, i32 2
  store i32 0, i32* %259, align 8
  br label %260

260:                                              ; preds = %257, %250
  br label %261

261:                                              ; preds = %260, %238
  br label %262

262:                                              ; preds = %261, %230
  %263 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %264 = call i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %6, align 4
  br label %270

269:                                              ; preds = %262
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %269, %266
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

declare dso_local i8* @max(i64, i64) #1

declare dso_local i8* @min(i64, i64) #1

declare dso_local i64 @reg_get_max_bandwidth(%struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*) #1

declare dso_local i32 @reg_wmm_rules_intersect(i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
