; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/extr_browser.c_ui_browser__run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32, i32, i32, i32, i32 (%struct.ui_browser*, i32, i32)*, i64, i64, i64, i32, i32, i32 (%struct.ui_browser*)* }

@ui__lock = common dso_local global i32 0, align 4
@K_RESIZE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__run(%struct.ui_browser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %2, %24, %82, %334
  %10 = call i32 @pthread_mutex_lock(i32* @ui__lock)
  %11 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %12 = call i32 @__ui_browser__refresh(%struct.ui_browser* %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @SLsmg_refresh()
  %14 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %335

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ui__getch(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @K_RESIZE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = call i32 @ui__refresh_dimensions(i32 0)
  %26 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %27 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %26, i32 0, i32 11
  %28 = load i32 (%struct.ui_browser*)*, i32 (%struct.ui_browser*)** %27, align 8
  %29 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %30 = call i32 %28(%struct.ui_browser* %29)
  %31 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %32 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %33 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__ui_browser__show_title(%struct.ui_browser* %31, i32 %34)
  %36 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %37 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ui_helpline__puts(i32 %38)
  br label %9

40:                                               ; preds = %18
  %41 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %42 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %40
  %46 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %47 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 135
  br i1 %52, label %82, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 128
  br i1 %55, label %82, label %56

56:                                               ; preds = %53
  %57 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %58 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 132
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 129
  br i1 %66, label %82, label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 131
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 130
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 133
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 134
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 32
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %53, %50
  %83 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %84 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %9

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %336

87:                                               ; preds = %45, %40
  %88 = load i32, i32* %7, align 4
  switch i32 %88, label %331 [
    i32 135, label %89
    i32 128, label %127
    i32 129, label %157
    i32 132, label %178
    i32 131, label %195
    i32 32, label %195
    i32 130, label %250
    i32 133, label %291
    i32 134, label %294
  ]

89:                                               ; preds = %87
  %90 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %91 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %94 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %334

99:                                               ; preds = %89
  %100 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %101 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %105 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %108 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %111 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %109, %112
  %114 = icmp eq i32 %106, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %99
  %116 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %117 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %121 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %120, i32 0, i32 5
  %122 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %121, align 8
  %123 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %124 = load i32, i32* @SEEK_CUR, align 4
  %125 = call i32 %122(%struct.ui_browser* %123, i32 1, i32 %124)
  br label %126

126:                                              ; preds = %115, %99
  br label %334

127:                                              ; preds = %87
  %128 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %129 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %334

133:                                              ; preds = %127
  %134 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %135 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %139 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %142 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %133
  %146 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %147 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %151 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %150, i32 0, i32 5
  %152 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %151, align 8
  %153 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %154 = load i32, i32* @SEEK_CUR, align 4
  %155 = call i32 %152(%struct.ui_browser* %153, i32 -1, i32 %154)
  br label %156

156:                                              ; preds = %145, %133
  br label %334

157:                                              ; preds = %87
  %158 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %159 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  br label %332

163:                                              ; preds = %157
  %164 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %165 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %168 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %169, 1
  %171 = icmp slt i64 %166, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %174 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %172, %163
  br label %334

178:                                              ; preds = %87
  %179 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %180 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  br label %332

184:                                              ; preds = %178
  %185 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %186 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %191 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, -1
  store i64 %193, i64* %191, align 8
  br label %194

194:                                              ; preds = %189, %184
  br label %334

195:                                              ; preds = %87, %87
  %196 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %197 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %200 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %198, %201
  %203 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %204 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %205, 1
  %207 = icmp sgt i32 %202, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %195
  br label %334

209:                                              ; preds = %195
  %210 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %211 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %8, align 4
  %213 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %214 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %215, %216
  %218 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %219 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = icmp sgt i32 %217, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %209
  %224 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %225 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, 1
  %228 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %229 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %227, %230
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %223, %209
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %235 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %240 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %244 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %243, i32 0, i32 5
  %245 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %244, align 8
  %246 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @SEEK_CUR, align 4
  %249 = call i32 %245(%struct.ui_browser* %246, i32 %247, i32 %248)
  br label %334

250:                                              ; preds = %87
  %251 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %252 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %334

256:                                              ; preds = %250
  %257 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %258 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %261 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %256
  %265 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %266 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %8, align 4
  br label %272

268:                                              ; preds = %256
  %269 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %270 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %268, %264
  %273 = load i32, i32* %8, align 4
  %274 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %275 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %280 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = sub nsw i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %284 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %283, i32 0, i32 5
  %285 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %284, align 8
  %286 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sub nsw i32 0, %287
  %289 = load i32, i32* @SEEK_CUR, align 4
  %290 = call i32 %285(%struct.ui_browser* %286, i32 %288, i32 %289)
  br label %334

291:                                              ; preds = %87
  %292 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %293 = call i32 @ui_browser__reset_index(%struct.ui_browser* %292)
  br label %334

294:                                              ; preds = %87
  %295 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %296 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = sub nsw i32 %297, 1
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %301 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = icmp sge i32 %299, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %294
  %305 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %306 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  br label %309

309:                                              ; preds = %304, %294
  %310 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %311 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = sub nsw i32 %312, 1
  %314 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %315 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  %316 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %317 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %8, align 4
  %320 = sub nsw i32 %318, %319
  %321 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %322 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 4
  %323 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %324 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %323, i32 0, i32 5
  %325 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %324, align 8
  %326 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sub nsw i32 0, %327
  %329 = load i32, i32* @SEEK_END, align 4
  %330 = call i32 %325(%struct.ui_browser* %326, i32 %328, i32 %329)
  br label %334

331:                                              ; preds = %87
  br label %332

332:                                              ; preds = %331, %183, %162
  %333 = load i32, i32* %7, align 4
  store i32 %333, i32* %3, align 4
  br label %336

334:                                              ; preds = %309, %291, %272, %255, %232, %208, %194, %177, %156, %132, %126, %98
  br label %9

335:                                              ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %336

336:                                              ; preds = %335, %332, %85
  %337 = load i32, i32* %3, align 4
  ret i32 %337
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @__ui_browser__refresh(%struct.ui_browser*) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ui__getch(i32) #1

declare dso_local i32 @ui__refresh_dimensions(i32) #1

declare dso_local i32 @__ui_browser__show_title(%struct.ui_browser*, i32) #1

declare dso_local i32 @ui_helpline__puts(i32) #1

declare dso_local i32 @ui_browser__reset_index(%struct.ui_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
