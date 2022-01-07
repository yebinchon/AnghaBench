; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"DSP is already loaded!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"load_dsp: Set bad_board to true\0A\00", align 1
@DSP_VC_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CHI32_STATUS_REG = common dso_local global i32 0, align 4
@CHI32_STATUS_REG_HF3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\0A\00", align 1
@CHI32_CONTROL_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"load_dsp: failed to write number of DSP words\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"load_dsp: failed to write DSP address\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"load_dsp: failed to write DSP memory type\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"load_dsp: failed to write DSP data\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"load_dsp: Failed to write final zero\0A\00", align 1
@CHI32_STATUS_REG_HF4 = common dso_local global i32 0, align 4
@DSP_FNC_SET_COMMPAGE_ADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"load_dsp: Failed to write comm page address\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"load_dsp: Failed to read serial number\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"load_dsp: DSP load timed out waiting for HF4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32*)* @load_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_dsp(%struct.echoaudio* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %312

25:                                               ; preds = %2
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %29 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %33 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %39 = load i32, i32* @DSP_VC_RESET, align 4
  %40 = call i64 @send_vector(%struct.echoaudio* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %44 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %312

51:                                               ; preds = %25
  %52 = call i32 @udelay(i32 10)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %66, %51
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 1000
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %58 = load i32, i32* @CHI32_STATUS_REG, align 4
  %59 = call i32 @get_dsp_register(%struct.echoaudio* %57, i32 %58)
  %60 = load i32, i32* @CHI32_STATUS_REG_HF3, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %69

64:                                               ; preds = %56
  %65 = call i32 @udelay(i32 10)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %53

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 1000
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %74 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %73, i32 0, i32 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %312

81:                                               ; preds = %69
  %82 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %83 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %84 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %85 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %86 = call i32 @get_dsp_register(%struct.echoaudio* %84, i32 %85)
  %87 = or i32 %86, 2304
  %88 = call i32 @set_dsp_register(%struct.echoaudio* %82, i32 %83, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %216, %81
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %217

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %103
  br label %217

121:                                              ; preds = %103
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 16
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %127, %133
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %8, align 4
  %137 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @write_dsp(%struct.echoaudio* %137, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %121
  %142 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %143 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %312

150:                                              ; preds = %121
  %151 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @write_dsp(%struct.echoaudio* %151, i32 %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %157 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %156, i32 0, i32 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dev_err(i32 %160, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %312

164:                                              ; preds = %150
  %165 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i64 @write_dsp(%struct.echoaudio* %165, i32 %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %171 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %170, i32 0, i32 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dev_err(i32 %174, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %176 = load i32, i32* @EIO, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %312

178:                                              ; preds = %164
  store i32 0, i32* %10, align 4
  br label %179

179:                                              ; preds = %211, %178
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %216

183:                                              ; preds = %179
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 16
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %189, %195
  store i32 %196, i32* %7, align 4
  %197 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i64 @write_dsp(%struct.echoaudio* %197, i32 %198)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %183
  %202 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %203 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %202, i32 0, i32 4
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dev_err(i32 %206, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %208 = load i32, i32* @EIO, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  br label %312

210:                                              ; preds = %183
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 2
  store i32 %215, i32* %8, align 4
  br label %179

216:                                              ; preds = %179
  br label %92

217:                                              ; preds = %120, %102
  %218 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %219 = call i64 @write_dsp(%struct.echoaudio* %218, i32 0)
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %217
  %222 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %223 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %222, i32 0, i32 4
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @dev_err(i32 %226, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %228 = load i32, i32* @EIO, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %3, align 4
  br label %312

230:                                              ; preds = %217
  %231 = call i32 @udelay(i32 10)
  store i32 0, i32* %10, align 4
  br label %232

232:                                              ; preds = %300, %230
  %233 = load i32, i32* %10, align 4
  %234 = icmp slt i32 %233, 5000
  br i1 %234, label %235, label %303

235:                                              ; preds = %232
  %236 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %237 = load i32, i32* @CHI32_STATUS_REG, align 4
  %238 = call i32 @get_dsp_register(%struct.echoaudio* %236, i32 %237)
  %239 = load i32, i32* @CHI32_STATUS_REG_HF4, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %298

242:                                              ; preds = %235
  %243 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %244 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %245 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %246 = load i32, i32* @CHI32_CONTROL_REG, align 4
  %247 = call i32 @get_dsp_register(%struct.echoaudio* %245, i32 %246)
  %248 = and i32 %247, -6913
  %249 = call i32 @set_dsp_register(%struct.echoaudio* %243, i32 %244, i32 %248)
  %250 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %251 = load i32, i32* @DSP_FNC_SET_COMMPAGE_ADDR, align 4
  %252 = call i64 @write_dsp(%struct.echoaudio* %250, i32 %251)
  %253 = icmp slt i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %242
  %255 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %256 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %255, i32 0, i32 4
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @dev_err(i32 %259, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %261 = load i32, i32* @EIO, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %3, align 4
  br label %312

263:                                              ; preds = %242
  %264 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %265 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %266 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @write_dsp(%struct.echoaudio* %264, i32 %267)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %263
  %271 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %272 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %271, i32 0, i32 4
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @dev_err(i32 %275, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i32, i32* @EIO, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %3, align 4
  br label %312

279:                                              ; preds = %263
  %280 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %281 = call i64 @read_sn(%struct.echoaudio* %280)
  %282 = icmp slt i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %279
  %284 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %285 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %284, i32 0, i32 4
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @dev_err(i32 %288, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %290 = load i32, i32* @EIO, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %3, align 4
  br label %312

292:                                              ; preds = %279
  %293 = load i32*, i32** %5, align 8
  %294 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %295 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %294, i32 0, i32 0
  store i32* %293, i32** %295, align 8
  %296 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %297 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %296, i32 0, i32 1
  store i32 0, i32* %297, align 8
  store i32 0, i32* %3, align 4
  br label %312

298:                                              ; preds = %235
  %299 = call i32 @udelay(i32 100)
  br label %300

300:                                              ; preds = %298
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %232

303:                                              ; preds = %232
  %304 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %305 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %304, i32 0, i32 4
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @dev_err(i32 %308, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %310 = load i32, i32* @EIO, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %3, align 4
  br label %312

312:                                              ; preds = %303, %292, %283, %270, %254, %221, %201, %169, %155, %141, %72, %42, %18
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @get_dsp_register(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_dsp_register(%struct.echoaudio*, i32, i32) #1

declare dso_local i64 @write_dsp(%struct.echoaudio*, i32) #1

declare dso_local i64 @read_sn(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
