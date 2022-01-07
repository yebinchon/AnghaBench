; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jsmn.c_jsmn_parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jsmn.c_jsmn_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i8* }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_OBJECT = common dso_local global i8* null, align 8
@JSMN_ARRAY = common dso_local global i8* null, align 8
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@JSMN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsmn_parse(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_12__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %17

17:                                               ; preds = %220, %5
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %225

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %15, align 1
  %30 = load i8, i8* %15, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %192 [
    i32 123, label %32
    i32 91, label %32
    i32 125, label %79
    i32 93, label %79
    i32 34, label %164
    i32 9, label %191
    i32 13, label %191
    i32 10, label %191
    i32 58, label %191
    i32 44, label %191
    i32 32, label %191
  ]

32:                                               ; preds = %23, %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__* %33, %struct.TYPE_12__* %34, i32 %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %14, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %38 = icmp eq %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %40, i32* %6, align 4
  br label %257

41:                                               ; preds = %32
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i8, i8* %15, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 123
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %219

79:                                               ; preds = %23, %23
  %80 = load i8, i8* %15, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 125
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %87

85:                                               ; preds = %79
  %86 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i8* [ %84, %83 ], [ %86, %85 ]
  store i8* %88, i8** %16, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %129, %87
  %94 = load i32, i32* %13, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %132

96:                                               ; preds = %93
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 %99
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %14, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, -1
  br i1 %104, label %105, label %128

105:                                              ; preds = %96
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %117, i32* %6, align 4
  br label %257

118:                                              ; preds = %110
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  store i32 -1, i32* %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  br label %132

128:                                              ; preds = %105, %96
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %13, align 4
  br label %93

132:                                              ; preds = %118, %93
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %136, i32* %6, align 4
  br label %257

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %160, %137
  %139 = load i32, i32* %13, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  store %struct.TYPE_12__* %145, %struct.TYPE_12__** %14, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, -1
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  br label %163

159:                                              ; preds = %150, %141
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %13, align 4
  br label %138

163:                                              ; preds = %155, %138
  br label %219

164:                                              ; preds = %23
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @jsmn_parse_string(%struct.TYPE_13__* %165, i8* %166, i64 %167, %struct.TYPE_12__* %168, i32 %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %6, align 4
  br label %257

175:                                              ; preds = %164
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, -1
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %180, %175
  br label %219

191:                                              ; preds = %23, %23, %23, %23, %23, %23
  br label %219

192:                                              ; preds = %23
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @jsmn_parse_primitive(%struct.TYPE_13__* %193, i8* %194, i64 %195, %struct.TYPE_12__* %196, i32 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %6, align 4
  br label %257

203:                                              ; preds = %192
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %208, %203
  br label %219

219:                                              ; preds = %218, %191, %190, %163, %64
  br label %220

220:                                              ; preds = %219
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %222, align 8
  br label %17

225:                                              ; preds = %17
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %252, %225
  %231 = load i32, i32* %13, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, -1
  br i1 %240, label %241, label %251

241:                                              ; preds = %233
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %251

249:                                              ; preds = %241
  %250 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %250, i32* %6, align 4
  br label %257

251:                                              ; preds = %241, %233
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %13, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %13, align 4
  br label %230

255:                                              ; preds = %230
  %256 = load i32, i32* @JSMN_SUCCESS, align 4
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %255, %249, %201, %173, %135, %116, %39
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_string(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_primitive(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
