; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_sample_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.minstrel_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.minstrel_ht_sta = type { i64, i64, i32, i32*, i32*, i32, i32, i32, %struct.minstrel_mcs_group_data* }
%struct.minstrel_mcs_group_data = type { i64, i64, i32*, %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i64, i32, i64 }

@SAMPLE_SWITCH_THR = common dso_local global i64 0, align 8
@sample_table = common dso_local global i32** null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_priv*, %struct.minstrel_ht_sta*)* @minstrel_get_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_sample_rate(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca %struct.minstrel_rate_stats*, align 8
  %7 = alloca %struct.minstrel_mcs_group_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %15 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %22 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %27 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SAMPLE_SWITCH_THR, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %33 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %25
  store i32 -1, i32* %3, align 4
  br label %250

37:                                               ; preds = %31, %20, %2
  %38 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %39 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %44 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  store i32 -1, i32* %3, align 4
  br label %250

47:                                               ; preds = %37
  %48 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %49 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %250

53:                                               ; preds = %47
  %54 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %55 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  %57 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %58 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %57, i32 0, i32 8
  %59 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %59, i64 %61
  store %struct.minstrel_mcs_group_data* %62, %struct.minstrel_mcs_group_data** %7, align 8
  %63 = load i32**, i32*** @sample_table, align 8
  %64 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %65 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %70 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %75 = call i32 @minstrel_set_next_sample_idx(%struct.minstrel_ht_sta* %74)
  %76 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %77 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %250

88:                                               ; preds = %53
  %89 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %90 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %89, i32 0, i32 3
  %91 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %91, i64 %93
  store %struct.minstrel_rate_stats* %94, %struct.minstrel_rate_stats** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MCS_GROUP_RATES, align 4
  %97 = mul i32 %95, %96
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %101 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @minstrel_get_duration(i32 %104)
  %106 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %107 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @minstrel_get_duration(i32 %110)
  %112 = icmp ugt i32 %105, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %88
  %114 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %115 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %11, align 4
  %119 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %120 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  br label %135

124:                                              ; preds = %88
  %125 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %126 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %11, align 4
  %130 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %131 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %124, %113
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %138 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %136, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %146 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143, %135
  store i32 -1, i32* %3, align 4
  br label %250

150:                                              ; preds = %143
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @minstrel_get_duration(i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %154 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @MINSTREL_FRAC(i32 95, i32 100)
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %160 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @minstrel_get_duration(i32 %161)
  %163 = mul i32 %162, 3
  %164 = load i32, i32* %8, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158, %150
  store i32 -1, i32* %3, align 4
  br label %250

167:                                              ; preds = %158
  %168 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %169 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %168, i32 0, i32 1
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %189

174:                                              ; preds = %167
  %175 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %176 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @minstrel_get_duration(i32 %179)
  %181 = load i32, i32* %8, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %174
  %184 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %185 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183, %174
  store i32 -1, i32* %3, align 4
  br label %250

189:                                              ; preds = %183, %167
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @minstrel_get_duration(i32 %191)
  %193 = icmp uge i32 %190, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %196 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i32 -1, i32* %3, align 4
  br label %250

200:                                              ; preds = %194, %189
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minstrel_mcs_groups, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @MCS_GROUP_RATES, align 4
  %204 = udiv i32 %202, %203
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @minstrel_get_duration(i32 %210)
  %212 = icmp uge i32 %209, %211
  br i1 %212, label %213, label %244

213:                                              ; preds = %200
  %214 = load i32, i32* %10, align 4
  %215 = sub i32 %214, 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @minstrel_mcs_groups, align 8
  %217 = load i32, i32* %9, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp ult i32 %215, %221
  br i1 %222, label %230, label %223

223:                                              ; preds = %213
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %226 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @minstrel_get_duration(i32 %227)
  %229 = icmp uge i32 %224, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %223, %213
  %231 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %232 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %233, 20
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i32 -1, i32* %3, align 4
  br label %250

236:                                              ; preds = %230
  %237 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %238 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  %241 = icmp sgt i32 %239, 2
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 -1, i32* %3, align 4
  br label %250

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %223, %200
  %245 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %246 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %13, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %244, %242, %235, %199, %188, %166, %149, %87, %52, %42, %36
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @minstrel_set_next_sample_idx(%struct.minstrel_ht_sta*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @minstrel_get_duration(i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
