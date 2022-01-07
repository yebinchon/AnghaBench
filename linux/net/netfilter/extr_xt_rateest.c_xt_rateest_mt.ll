; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_rateest.c_xt_rateest_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_rateest.c_xt_rateest_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_rateest_match_info* }
%struct.xt_rateest_match_info = type { i32, i32, i64, i64, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gnet_stats_rate_est64 = type { i64, i64, i32 }

@XT_RATEEST_MATCH_DELTA = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_ABS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_BPS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_PPS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @xt_rateest_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_rateest_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_rateest_match_info*, align 8
  %6 = alloca %struct.gnet_stats_rate_est64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %13, align 8
  store %struct.xt_rateest_match_info* %14, %struct.xt_rateest_match_info** %5, align 8
  %15 = bitcast %struct.gnet_stats_rate_est64* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  store i32 1, i32* %11, align 4
  %16 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %17 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @gen_estimator_read(i32* %19, %struct.gnet_stats_rate_est64* %6)
  %21 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %22 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XT_RATEEST_MATCH_DELTA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %2
  %28 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %29 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %36 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %37, %39
  br label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi i64 [ %40, %34 ], [ 0, %41 ]
  store i64 %43, i64* %7, align 8
  %44 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %45 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %52 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %53, %55
  br label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i64 [ %56, %50 ], [ 0, %57 ]
  store i64 %59, i64* %9, align 8
  br label %65

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  %63 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %60, %58
  %66 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %67 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @XT_RATEEST_MATCH_ABS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %74 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  %76 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %77 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %10, align 8
  br label %130

79:                                               ; preds = %65
  %80 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %81 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @gen_estimator_read(i32* %83, %struct.gnet_stats_rate_est64* %6)
  %85 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %86 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @XT_RATEEST_MATCH_DELTA, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %79
  %92 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %93 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %94, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %100 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %101, %103
  br label %106

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %98
  %107 = phi i64 [ %104, %98 ], [ 0, %105 ]
  store i64 %107, i64* %8, align 8
  %108 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %109 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %116 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %117, %119
  br label %122

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %114
  %123 = phi i64 [ %120, %114 ], [ 0, %121 ]
  store i64 %123, i64* %10, align 8
  br label %129

124:                                              ; preds = %79
  %125 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %8, align 8
  %127 = getelementptr inbounds %struct.gnet_stats_rate_est64, %struct.gnet_stats_rate_est64* %6, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %124, %122
  br label %130

130:                                              ; preds = %129, %72
  %131 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %132 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %221 [
    i32 128, label %134
    i32 129, label %163
    i32 130, label %192
  ]

134:                                              ; preds = %130
  %135 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %136 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = icmp slt i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %11, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %141, %134
  %149 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %150 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp slt i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %155, %148
  br label %221

163:                                              ; preds = %130
  %164 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %165 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = icmp sgt i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %11, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %11, align 4
  br label %177

177:                                              ; preds = %170, %163
  %178 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %179 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp sgt i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %184, %177
  br label %221

192:                                              ; preds = %130
  %193 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %194 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %192
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* %8, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %199, %192
  %207 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %208 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* %10, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %11, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %213, %206
  br label %221

221:                                              ; preds = %130, %220, %191, %162
  %222 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %5, align 8
  %223 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @XT_RATEEST_MATCH_INVERT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 1, i32 0
  %230 = load i32, i32* %11, align 4
  %231 = xor i32 %230, %229
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  ret i32 %232
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gen_estimator_read(i32*, %struct.gnet_stats_rate_est64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
