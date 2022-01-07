; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_calculate_probability.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_pie.c_calculate_probability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pie_sched_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@PIE_SCALE = common dso_local global i32 0, align 4
@MAX_PROB = common dso_local global i32 0, align 4
@PSCHED_TICKS_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @calculate_probability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_probability(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.pie_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %14 = call %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.pie_sched_data* %14, %struct.pie_sched_data** %3, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %16 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %19 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %20 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %12, align 4
  %23 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %24 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %28 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %31 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PIE_SCALE, align 4
  %38 = shl i32 %36, %37
  %39 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %40 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %38, %42
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %35
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %48, %45
  %53 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %54 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @MAX_PROB, align 4
  %59 = load i32, i32* @PSCHED_TICKS_PER_SEC, align 4
  %60 = sdiv i32 %58, %59
  %61 = mul nsw i32 %57, %60
  %62 = ashr i32 %61, 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %64 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @MAX_PROB, align 4
  %69 = load i32, i32* @PSCHED_TICKS_PER_SEC, align 4
  %70 = sdiv i32 %68, %69
  %71 = mul nsw i32 %67, %70
  %72 = ashr i32 %71, 4
  store i32 %72, i32* %10, align 4
  %73 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %74 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MAX_PROB, align 4
  %78 = sdiv i32 %77, 10
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %52
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %10, align 4
  store i32 100, i32* %11, align 4
  br label %85

85:                                               ; preds = %99, %80
  %86 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %87 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MAX_PROB, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @div_u64(i32 %90, i32 %91)
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = icmp sle i32 %95, 1000000
  br label %97

97:                                               ; preds = %94, %85
  %98 = phi i1 [ false, %85 ], [ %96, %94 ]
  br i1 %98, label %99, label %106

99:                                               ; preds = %97
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 2
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 2
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 10
  store i32 %105, i32* %11, align 4
  br label %85

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %52
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %111 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %109, %113
  %115 = mul nsw i32 %108, %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = sub nsw i32 %119, %120
  %122 = mul nsw i32 %118, %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %126 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @MAX_PROB, align 4
  %131 = sdiv i32 %130, 50
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %107
  %134 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %135 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @MAX_PROB, align 4
  %139 = sdiv i32 %138, 10
  %140 = icmp sge i32 %137, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32, i32* @MAX_PROB, align 4
  %143 = sdiv i32 %142, 100
  %144 = mul nsw i32 %143, 2
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %141, %133, %107
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @NSEC_PER_MSEC, align 4
  %148 = mul nsw i32 250, %147
  %149 = call i32 @PSCHED_NS2TICKS(i32 %148)
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i32, i32* @MAX_PROB, align 4
  %153 = sdiv i32 %152, 50
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %151, %145
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %159 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %156
  %166 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %167 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load i32, i32* @MAX_PROB, align 4
  %174 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %175 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %172, %165
  br label %190

178:                                              ; preds = %156
  %179 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %180 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %178
  %186 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %187 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %178
  br label %190

190:                                              ; preds = %189, %177
  %191 = load i32, i32* %5, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = load i32, i32* %6, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %193
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %201 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = udiv i32 %203, 64
  %205 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %206 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = sub i32 %208, %204
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %199, %196, %193, %190
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %213 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %217 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  store i32 %215, i32* %218, align 8
  %219 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %220 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %224 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sdiv i32 %226, 2
  %228 = icmp slt i32 %222, %227
  br i1 %228, label %229, label %256

229:                                              ; preds = %210
  %230 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %231 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %235 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sdiv i32 %237, 2
  %239 = icmp slt i32 %233, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %229
  %241 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %242 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %240
  %247 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %248 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load %struct.pie_sched_data*, %struct.pie_sched_data** %3, align 8
  %254 = getelementptr inbounds %struct.pie_sched_data, %struct.pie_sched_data* %253, i32 0, i32 0
  %255 = call i32 @pie_vars_init(%struct.TYPE_6__* %254)
  br label %256

256:                                              ; preds = %252, %246, %240, %229, %210
  ret void
}

declare dso_local %struct.pie_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @PSCHED_NS2TICKS(i32) #1

declare dso_local i32 @pie_vars_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
