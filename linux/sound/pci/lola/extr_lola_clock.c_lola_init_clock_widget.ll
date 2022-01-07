; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_init_clock_widget.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_clock.c_lola_init_clock_widget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, %struct.lola_sample_clock* }
%struct.lola_sample_clock = type { i8, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@LOLA_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't read wcaps for 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No valid clock widget\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"clock_list nid=%x, entries=%d\0A\00", align 1
@MAX_SAMPLE_CLOCK_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"CLOCK_LIST too big: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOLA_VERB_GET_CLOCK_LIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Can't read CLOCK_LIST\0A\00", align 1
@LOLA_CLOCK_FORMAT_NONE = common dso_local global i32 0, align 4
@LOLA_CLOCK_TYPE_INTERNAL = common dso_local global i8 0, align 1
@LOLA_CLOCK_TYPE_VIDEO = common dso_local global i8 0, align 1
@LOLA_CLOCK_FORMAT_NTSC = common dso_local global i32 0, align 4
@LOLA_CLOCK_FORMAT_PAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_init_clock_widget(%struct.lola* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lola*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i16], align 2
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.lola_sample_clock*, align 8
  store %struct.lola* %0, %struct.lola** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.lola*, %struct.lola** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @LOLA_PAR_AUDIO_WIDGET_CAP, align 4
  %24 = call i32 @lola_read_param(%struct.lola* %21, i32 %22, i32 %23, i32* %6)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.lola*, %struct.lola** %4, align 8
  %29 = getelementptr inbounds %struct.lola, %struct.lola* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %3, align 4
  br label %263

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, -1048576
  %39 = icmp ne i32 %38, 32505856
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.lola*, %struct.lola** %4, align 8
  %42 = getelementptr inbounds %struct.lola, %struct.lola* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %263

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.lola*, %struct.lola** %4, align 8
  %50 = getelementptr inbounds %struct.lola, %struct.lola* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 255
  %54 = load %struct.lola*, %struct.lola** %4, align 8
  %55 = getelementptr inbounds %struct.lola, %struct.lola* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.lola*, %struct.lola** %4, align 8
  %58 = getelementptr inbounds %struct.lola, %struct.lola* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.lola*, %struct.lola** %4, align 8
  %64 = getelementptr inbounds %struct.lola, %struct.lola* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %66)
  %68 = load %struct.lola*, %struct.lola** %4, align 8
  %69 = getelementptr inbounds %struct.lola, %struct.lola* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX_SAMPLE_CLOCK_COUNT, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %47
  %75 = load %struct.lola*, %struct.lola** %4, align 8
  %76 = getelementptr inbounds %struct.lola, %struct.lola* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.lola*, %struct.lola** %4, align 8
  %81 = getelementptr inbounds %struct.lola, %struct.lola* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %263

87:                                               ; preds = %47
  %88 = load %struct.lola*, %struct.lola** %4, align 8
  %89 = getelementptr inbounds %struct.lola, %struct.lola* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 3
  %94 = sdiv i32 %93, 4
  store i32 %94, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %259, %87
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %262

99:                                               ; preds = %95
  %100 = load %struct.lola*, %struct.lola** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @LOLA_VERB_GET_CLOCK_LIST, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @lola_codec_read(%struct.lola* %100, i32 %101, i32 %102, i32 %103, i32 0, i32* %6, i32* %14)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = load %struct.lola*, %struct.lola** %4, align 8
  %109 = getelementptr inbounds %struct.lola, %struct.lola* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %263

116:                                              ; preds = %99
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, 4095
  %119 = trunc i32 %118 to i16
  %120 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 0
  store i16 %119, i16* %120, align 2
  %121 = load i32, i32* %6, align 4
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 4095
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 1
  store i16 %124, i16* %125, align 2
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, 4095
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 2
  store i16 %128, i16* %129, align 2
  %130 = load i32, i32* %14, align 4
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 4095
  %133 = trunc i32 %132 to i16
  %134 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 3
  store i16 %133, i16* %134, align 2
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %255, %116
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %258

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 %140
  %142 = load i16, i16* %141, align 2
  %143 = zext i16 %142 to i32
  %144 = ashr i32 %143, 8
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %16, align 1
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 %147
  %149 = load i16, i16* %148, align 2
  %150 = zext i16 %149 to i32
  %151 = and i32 %150, 255
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* @LOLA_CLOCK_FORMAT_NONE, align 4
  store i32 %152, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %153 = load i8, i8* %16, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, i8* @LOLA_CLOCK_TYPE_INTERNAL, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %154, %156
  br i1 %157, label %158, label %183

158:                                              ; preds = %138
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @lola_sample_rate_convert(i32 %159)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.lola*, %struct.lola** %4, align 8
  %163 = getelementptr inbounds %struct.lola, %struct.lola* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ult i32 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  store i32 0, i32* %19, align 4
  br label %182

167:                                              ; preds = %158
  %168 = load i32, i32* %17, align 4
  %169 = icmp eq i32 %168, 48000
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.lola*, %struct.lola** %4, align 8
  %173 = getelementptr inbounds %struct.lola, %struct.lola* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  store i32 %171, i32* %174, align 8
  %175 = load %struct.lola*, %struct.lola** %4, align 8
  %176 = getelementptr inbounds %struct.lola, %struct.lola* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  store i32 48000, i32* %177, align 4
  %178 = load %struct.lola*, %struct.lola** %4, align 8
  %179 = getelementptr inbounds %struct.lola, %struct.lola* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %170, %167
  br label %182

182:                                              ; preds = %181, %166
  br label %212

183:                                              ; preds = %138
  %184 = load i8, i8* %16, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @LOLA_CLOCK_TYPE_VIDEO, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %183
  %190 = load i32, i32* %17, align 4
  %191 = call i32 @lola_sample_rate_convert(i32 %190)
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load %struct.lola*, %struct.lola** %4, align 8
  %194 = getelementptr inbounds %struct.lola, %struct.lola* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ult i32 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %189
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %197, %189
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 %200
  %202 = load i16, i16* %201, align 2
  %203 = zext i16 %202 to i32
  %204 = and i32 %203, 128
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = load i32, i32* @LOLA_CLOCK_FORMAT_NTSC, align 4
  store i32 %207, i32* %18, align 4
  br label %210

208:                                              ; preds = %198
  %209 = load i32, i32* @LOLA_CLOCK_FORMAT_PAL, align 4
  store i32 %209, i32* %18, align 4
  br label %210

210:                                              ; preds = %208, %206
  br label %211

211:                                              ; preds = %210, %183
  br label %212

212:                                              ; preds = %211, %182
  %213 = load i32, i32* %19, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %242

215:                                              ; preds = %212
  %216 = load %struct.lola*, %struct.lola** %4, align 8
  %217 = getelementptr inbounds %struct.lola, %struct.lola* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 6
  %219 = load %struct.lola_sample_clock*, %struct.lola_sample_clock** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.lola_sample_clock, %struct.lola_sample_clock* %219, i64 %221
  store %struct.lola_sample_clock* %222, %struct.lola_sample_clock** %20, align 8
  %223 = load i8, i8* %16, align 1
  %224 = load %struct.lola_sample_clock*, %struct.lola_sample_clock** %20, align 8
  %225 = getelementptr inbounds %struct.lola_sample_clock, %struct.lola_sample_clock* %224, i32 0, i32 0
  store i8 %223, i8* %225, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.lola_sample_clock*, %struct.lola_sample_clock** %20, align 8
  %228 = getelementptr inbounds %struct.lola_sample_clock, %struct.lola_sample_clock* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load %struct.lola_sample_clock*, %struct.lola_sample_clock** %20, align 8
  %231 = getelementptr inbounds %struct.lola_sample_clock, %struct.lola_sample_clock* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.lola*, %struct.lola** %4, align 8
  %234 = getelementptr inbounds %struct.lola, %struct.lola* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 5
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 %232, i32* %239, align 4
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %248

242:                                              ; preds = %212
  %243 = load %struct.lola*, %struct.lola** %4, align 8
  %244 = getelementptr inbounds %struct.lola, %struct.lola* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = add i32 %246, -1
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %242, %215
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %9, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %258

254:                                              ; preds = %248
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %135

258:                                              ; preds = %253, %135
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %7, align 4
  br label %95

262:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %262, %107, %74, %40, %27
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @lola_read_param(%struct.lola*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @lola_codec_read(%struct.lola*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @lola_sample_rate_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
