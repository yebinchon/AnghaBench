; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_generic_metric.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-shadow.c_generic_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32 }
%struct.perf_stat_config = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_stat_output_ctx = type { i64, i8*, i32 (%struct.perf_stat_config.0*, i8*, i32*, i8*, i8*, double)* }
%struct.perf_stat_config.0 = type opaque
%struct.runtime_stat = type { i32 }
%struct.parse_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.saved_value = type { double, i64, %struct.stats }

@.str = private unnamed_addr constant [14 x i8] c"duration_time\00", align 1
@walltime_nsecs_stats = common dso_local global %struct.stats zeroinitializer, align 4
@STAT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s  %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%8.1f\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, i8*, %struct.evsel**, i8*, i8*, i8*, double, i32, %struct.perf_stat_output_ctx*, %struct.runtime_stat*)* @generic_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_metric(%struct.perf_stat_config* %0, i8* %1, %struct.evsel** %2, i8* %3, i8* %4, i8* %5, double %6, i32 %7, %struct.perf_stat_output_ctx* %8, %struct.runtime_stat* %9) #0 {
  %11 = alloca %struct.perf_stat_config*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.evsel**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.perf_stat_output_ctx*, align 8
  %20 = alloca %struct.runtime_stat*, align 8
  %21 = alloca i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)*, align 8
  %22 = alloca %struct.parse_ctx, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.saved_value*, align 8
  %30 = alloca %struct.stats*, align 8
  %31 = alloca double, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca [64 x i8], align 16
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.evsel** %2, %struct.evsel*** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store double %6, double* %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.perf_stat_output_ctx* %8, %struct.perf_stat_output_ctx** %19, align 8
  store %struct.runtime_stat* %9, %struct.runtime_stat** %20, align 8
  %35 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %19, align 8
  %36 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %35, i32 0, i32 2
  %37 = load i32 (%struct.perf_stat_config.0*, i8*, i32*, i8*, i8*, double)*, i32 (%struct.perf_stat_config.0*, i8*, i32*, i8*, i8*, double)** %36, align 8
  %38 = bitcast i32 (%struct.perf_stat_config.0*, i8*, i32*, i8*, i8*, double)* %37 to i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)*
  store i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)* %38, i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)** %21, align 8
  %39 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %19, align 8
  %40 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %26, align 8
  %42 = call i32 @expr__ctx_init(%struct.parse_ctx* %22)
  %43 = load i8*, i8** %14, align 8
  %44 = load double, double* %17, align 8
  %45 = call i32 @expr__add_id(%struct.parse_ctx* %22, i8* %43, double %44)
  store i32 0, i32* %25, align 4
  br label %46

46:                                               ; preds = %123, %10
  %47 = load %struct.evsel**, %struct.evsel*** %13, align 8
  %48 = load i32, i32* %25, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.evsel*, %struct.evsel** %47, i64 %49
  %51 = load %struct.evsel*, %struct.evsel** %50, align 8
  %52 = icmp ne %struct.evsel* %51, null
  br i1 %52, label %53, label %126

53:                                               ; preds = %46
  store double 0.000000e+00, double* %31, align 8
  %54 = load %struct.evsel**, %struct.evsel*** %13, align 8
  %55 = load i32, i32* %25, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.evsel*, %struct.evsel** %54, i64 %56
  %58 = load %struct.evsel*, %struct.evsel** %57, align 8
  %59 = getelementptr inbounds %struct.evsel, %struct.evsel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcmp(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store %struct.stats* @walltime_nsecs_stats, %struct.stats** %30, align 8
  store double 1.000000e-09, double* %24, align 8
  br label %89

64:                                               ; preds = %53
  %65 = load %struct.evsel**, %struct.evsel*** %13, align 8
  %66 = load i32, i32* %25, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.evsel*, %struct.evsel** %65, i64 %67
  %69 = load %struct.evsel*, %struct.evsel** %68, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @STAT_NONE, align 4
  %72 = load %struct.runtime_stat*, %struct.runtime_stat** %20, align 8
  %73 = call %struct.saved_value* @saved_value_lookup(%struct.evsel* %69, i32 %70, i32 0, i32 %71, i32 0, %struct.runtime_stat* %72)
  store %struct.saved_value* %73, %struct.saved_value** %29, align 8
  %74 = load %struct.saved_value*, %struct.saved_value** %29, align 8
  %75 = icmp ne %struct.saved_value* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %126

77:                                               ; preds = %64
  %78 = load %struct.saved_value*, %struct.saved_value** %29, align 8
  %79 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %78, i32 0, i32 2
  store %struct.stats* %79, %struct.stats** %30, align 8
  store double 1.000000e+00, double* %24, align 8
  %80 = load %struct.saved_value*, %struct.saved_value** %29, align 8
  %81 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.saved_value*, %struct.saved_value** %29, align 8
  %86 = getelementptr inbounds %struct.saved_value, %struct.saved_value* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  store double %87, double* %31, align 8
  br label %88

88:                                               ; preds = %84, %77
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.evsel**, %struct.evsel*** %13, align 8
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.evsel*, %struct.evsel** %90, i64 %92
  %94 = load %struct.evsel*, %struct.evsel** %93, align 8
  %95 = getelementptr inbounds %struct.evsel, %struct.evsel* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @strdup(i32 %96)
  store i8* %97, i8** %27, align 8
  %98 = load i8*, i8** %27, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  br label %229

101:                                              ; preds = %89
  %102 = load i8*, i8** %27, align 8
  %103 = call i8* @strchr(i8* %102, i8 signext 32)
  store i8* %103, i8** %28, align 8
  %104 = load i8*, i8** %28, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** %28, align 8
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %106, %101
  %109 = load double, double* %31, align 8
  %110 = fcmp une double %109, 0.000000e+00
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %27, align 8
  %113 = load double, double* %31, align 8
  %114 = call i32 @expr__add_id(%struct.parse_ctx* %22, i8* %112, double %113)
  br label %122

115:                                              ; preds = %108
  %116 = load i8*, i8** %27, align 8
  %117 = load %struct.stats*, %struct.stats** %30, align 8
  %118 = call double @avg_stats(%struct.stats* %117)
  %119 = load double, double* %24, align 8
  %120 = fmul double %118, %119
  %121 = call i32 @expr__add_id(%struct.parse_ctx* %22, i8* %116, double %120)
  br label %122

122:                                              ; preds = %115, %111
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %25, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %25, align 4
  br label %46

126:                                              ; preds = %76, %46
  %127 = load %struct.evsel**, %struct.evsel*** %13, align 8
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.evsel*, %struct.evsel** %127, i64 %129
  %131 = load %struct.evsel*, %struct.evsel** %130, align 8
  %132 = icmp ne %struct.evsel* %131, null
  br i1 %132, label %207, label %133

133:                                              ; preds = %126
  %134 = load i8*, i8** %12, align 8
  store i8* %134, i8** %32, align 8
  %135 = call i64 @expr__parse(double* %23, %struct.parse_ctx* %22, i8** %32)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %185

137:                                              ; preds = %133
  %138 = load i8*, i8** %16, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  %141 = load i8*, i8** %15, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %162

143:                                              ; preds = %140
  %144 = load i8*, i8** %16, align 8
  %145 = call i64 @perf_pmu__convert_scale(i8* %144, i8** %33, double* %24)
  %146 = icmp sge i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load double, double* %24, align 8
  %149 = load double, double* %23, align 8
  %150 = fmul double %149, %148
  store double %150, double* %23, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = getelementptr inbounds [64 x i8], [64 x i8]* %34, i64 0, i64 0
  %153 = load i8*, i8** %33, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @scnprintf(i8* %152, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %153, i8* %154)
  %156 = load i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)*, i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)** %21, align 8
  %157 = load %struct.perf_stat_config*, %struct.perf_stat_config** %11, align 8
  %158 = load i8*, i8** %26, align 8
  %159 = getelementptr inbounds [64 x i8], [64 x i8]* %34, i64 0, i64 0
  %160 = load double, double* %23, align 8
  %161 = call i32 %156(%struct.perf_stat_config* %157, i8* %158, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %159, double %160)
  br label %184

162:                                              ; preds = %140, %137
  %163 = load i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)*, i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)** %21, align 8
  %164 = load %struct.perf_stat_config*, %struct.perf_stat_config** %11, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i8*, i8** %15, align 8
  br label %180

170:                                              ; preds = %162
  %171 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %19, align 8
  %172 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i8*, i8** %14, align 8
  br label %178

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i8* [ %176, %175 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %177 ]
  br label %180

180:                                              ; preds = %178, %168
  %181 = phi i8* [ %169, %168 ], [ %179, %178 ]
  %182 = load double, double* %23, align 8
  %183 = call i32 %163(%struct.perf_stat_config* %164, i8* %165, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %181, double %182)
  br label %184

184:                                              ; preds = %180, %151
  br label %206

185:                                              ; preds = %133
  %186 = load i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)*, i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)** %21, align 8
  %187 = load %struct.perf_stat_config*, %struct.perf_stat_config** %11, align 8
  %188 = load i8*, i8** %26, align 8
  %189 = load %struct.perf_stat_output_ctx*, %struct.perf_stat_output_ctx** %19, align 8
  %190 = getelementptr inbounds %struct.perf_stat_output_ctx, %struct.perf_stat_output_ctx* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load i8*, i8** %15, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i8*, i8** %15, align 8
  br label %200

198:                                              ; preds = %193
  %199 = load i8*, i8** %14, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i8* [ %197, %196 ], [ %199, %198 ]
  br label %203

202:                                              ; preds = %185
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i8* [ %201, %200 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %202 ]
  %205 = call i32 %186(%struct.perf_stat_config* %187, i8* %188, i32* null, i8* null, i8* %204, double 0.000000e+00)
  br label %206

206:                                              ; preds = %203, %184
  br label %212

207:                                              ; preds = %126
  %208 = load i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)*, i32 (%struct.perf_stat_config*, i8*, i32*, i8*, i8*, double)** %21, align 8
  %209 = load %struct.perf_stat_config*, %struct.perf_stat_config** %11, align 8
  %210 = load i8*, i8** %26, align 8
  %211 = call i32 %208(%struct.perf_stat_config* %209, i8* %210, i32* null, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), double 0.000000e+00)
  br label %212

212:                                              ; preds = %207, %206
  store i32 1, i32* %25, align 4
  br label %213

213:                                              ; preds = %226, %212
  %214 = load i32, i32* %25, align 4
  %215 = getelementptr inbounds %struct.parse_ctx, %struct.parse_ctx* %22, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.parse_ctx, %struct.parse_ctx* %22, i32 0, i32 1
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = load i32, i32* %25, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = call i32 @zfree(i32* %224)
  br label %226

226:                                              ; preds = %218
  %227 = load i32, i32* %25, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %25, align 4
  br label %213

229:                                              ; preds = %100, %213
  ret void
}

declare dso_local i32 @expr__ctx_init(%struct.parse_ctx*) #1

declare dso_local i32 @expr__add_id(%struct.parse_ctx*, i8*, double) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.saved_value* @saved_value_lookup(%struct.evsel*, i32, i32, i32, i32, %struct.runtime_stat*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local double @avg_stats(%struct.stats*) #1

declare dso_local i64 @expr__parse(double*, %struct.parse_ctx*, i8**) #1

declare dso_local i64 @perf_pmu__convert_scale(i8*, i8**, double*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @zfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
