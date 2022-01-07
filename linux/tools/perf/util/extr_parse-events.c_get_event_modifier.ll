; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_get_event_modifier.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_get_event_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_modifier = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evsel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_modifier*, i8*, %struct.evsel*)* @get_event_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_event_modifier(%struct.event_modifier* %0, i8* %1, %struct.evsel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_modifier*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.event_modifier* %0, %struct.event_modifier** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.evsel* %2, %struct.evsel** %7, align 8
  %21 = load %struct.evsel*, %struct.evsel** %7, align 8
  %22 = icmp ne %struct.evsel* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.evsel*, %struct.evsel** %7, align 8
  %25 = getelementptr inbounds %struct.evsel, %struct.evsel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %28, %23 ], [ 0, %29 ]
  store i32 %31, i32* %8, align 4
  %32 = load %struct.evsel*, %struct.evsel** %7, align 8
  %33 = icmp ne %struct.evsel* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.evsel*, %struct.evsel** %7, align 8
  %36 = getelementptr inbounds %struct.evsel, %struct.evsel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32 [ %39, %34 ], [ 0, %40 ]
  store i32 %42, i32* %9, align 4
  %43 = load %struct.evsel*, %struct.evsel** %7, align 8
  %44 = icmp ne %struct.evsel* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.evsel*, %struct.evsel** %7, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 0, %51 ]
  store i32 %53, i32* %10, align 4
  %54 = load %struct.evsel*, %struct.evsel** %7, align 8
  %55 = icmp ne %struct.evsel* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.evsel*, %struct.evsel** %7, align 8
  %58 = getelementptr inbounds %struct.evsel, %struct.evsel* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ %61, %56 ], [ 0, %62 ]
  store i32 %64, i32* %11, align 4
  %65 = load %struct.evsel*, %struct.evsel** %7, align 8
  %66 = icmp ne %struct.evsel* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.evsel*, %struct.evsel** %7, align 8
  %69 = getelementptr inbounds %struct.evsel, %struct.evsel* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32 [ %72, %67 ], [ 0, %73 ]
  store i32 %75, i32* %12, align 4
  %76 = load %struct.evsel*, %struct.evsel** %7, align 8
  %77 = icmp ne %struct.evsel* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.evsel*, %struct.evsel** %7, align 8
  %80 = getelementptr inbounds %struct.evsel, %struct.evsel* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  br label %85

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi i32 [ %83, %78 ], [ 0, %84 ]
  store i32 %86, i32* %13, align 4
  %87 = load %struct.evsel*, %struct.evsel** %7, align 8
  %88 = icmp ne %struct.evsel* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.evsel*, %struct.evsel** %7, align 8
  %91 = getelementptr inbounds %struct.evsel, %struct.evsel* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  br label %96

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi i32 [ %94, %89 ], [ 0, %95 ]
  store i32 %97, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %98 = load %struct.evsel*, %struct.evsel** %7, align 8
  %99 = icmp ne %struct.evsel* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.evsel*, %struct.evsel** %7, align 8
  %102 = getelementptr inbounds %struct.evsel, %struct.evsel* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  br label %107

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %100
  %108 = phi i32 [ %105, %100 ], [ 0, %106 ]
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %18, align 4
  %114 = load %struct.evsel*, %struct.evsel** %7, align 8
  %115 = icmp ne %struct.evsel* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load %struct.evsel*, %struct.evsel** %7, align 8
  %118 = getelementptr inbounds %struct.evsel, %struct.evsel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  br label %121

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32 [ %119, %116 ], [ 0, %120 ]
  store i32 %122, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %123 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %124 = call i32 @memset(%struct.event_modifier* %123, i32 0, i32 48)
  br label %125

125:                                              ; preds = %232, %121
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %235

129:                                              ; preds = %125
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 117
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %138

138:                                              ; preds = %137, %134
  store i32 0, i32* %8, align 4
  br label %232

139:                                              ; preds = %129
  %140 = load i8*, i8** %6, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 107
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %148

148:                                              ; preds = %147, %144
  store i32 0, i32* %9, align 4
  br label %231

149:                                              ; preds = %139
  %150 = load i8*, i8** %6, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 104
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %158

158:                                              ; preds = %157, %154
  store i32 0, i32* %10, align 4
  br label %230

159:                                              ; preds = %149
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 71
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i32, i32* %19, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %19, align 4
  br label %168

168:                                              ; preds = %167, %164
  store i32 0, i32* %12, align 4
  br label %229

169:                                              ; preds = %159
  %170 = load i8*, i8** %6, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 72
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i32, i32* %19, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %19, align 4
  br label %178

178:                                              ; preds = %177, %174
  store i32 0, i32* %11, align 4
  br label %228

179:                                              ; preds = %169
  %180 = load i8*, i8** %6, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 73
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 1, i32* %13, align 4
  br label %227

185:                                              ; preds = %179
  %186 = load i8*, i8** %6, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 112
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  store i32 1, i32* %12, align 4
  br label %196

196:                                              ; preds = %195, %190
  br label %226

197:                                              ; preds = %185
  %198 = load i8*, i8** %6, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 80
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 1, i32* %15, align 4
  br label %225

203:                                              ; preds = %197
  %204 = load i8*, i8** %6, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 83
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 1, i32* %16, align 4
  br label %224

209:                                              ; preds = %203
  %210 = load i8*, i8** %6, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 68
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32 1, i32* %17, align 4
  br label %223

215:                                              ; preds = %209
  %216 = load i8*, i8** %6, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 87
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 1, i32* %20, align 4
  br label %222

221:                                              ; preds = %215
  br label %235

222:                                              ; preds = %220
  br label %223

223:                                              ; preds = %222, %214
  br label %224

224:                                              ; preds = %223, %208
  br label %225

225:                                              ; preds = %224, %202
  br label %226

226:                                              ; preds = %225, %196
  br label %227

227:                                              ; preds = %226, %184
  br label %228

228:                                              ; preds = %227, %178
  br label %229

229:                                              ; preds = %228, %168
  br label %230

230:                                              ; preds = %229, %158
  br label %231

231:                                              ; preds = %230, %148
  br label %232

232:                                              ; preds = %231, %138
  %233 = load i8*, i8** %6, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %6, align 8
  br label %125

235:                                              ; preds = %221, %125
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %236, 3
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %4, align 4
  br label %278

241:                                              ; preds = %235
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %244 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %247 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %250 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %253 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* %12, align 4
  %255 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %256 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %259 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %14, align 4
  %261 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %262 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 4
  %263 = load i32, i32* %15, align 4
  %264 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %265 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %264, i32 0, i32 7
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %19, align 4
  %267 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %268 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %267, i32 0, i32 8
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %16, align 4
  %270 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %271 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %270, i32 0, i32 9
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %274 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %273, i32 0, i32 10
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %20, align 4
  %276 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %277 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %276, i32 0, i32 11
  store i32 %275, i32* %277, align 4
  store i32 0, i32* %4, align 4
  br label %278

278:                                              ; preds = %241, %238
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i32 @memset(%struct.event_modifier*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
