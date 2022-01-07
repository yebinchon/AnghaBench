; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@VORTEX_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@VORTEX_CTRL = common dso_local global i32 0, align 4
@CTRL_IRQ_ENABLE = common dso_local global i32 0, align 4
@VORTEX_IRQ_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"missing irq source\0A\00", align 1
@IRQ_ERR_MASK = common dso_local global i32 0, align 4
@IRQ_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"IRQ fatal error\0A\00", align 1
@IRQ_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"IRQ parity error\0A\00", align 1
@IRQ_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"IRQ reg error\0A\00", align 1
@IRQ_FIFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"IRQ fifo error\0A\00", align 1
@IRQ_DMA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"IRQ dma error\0A\00", align 1
@IRQ_PCMOUT = common dso_local global i32 0, align 4
@NR_ADB = common dso_local global i32 0, align 4
@FIFO_START = common dso_local global i64 0, align 8
@NR_WT = common dso_local global i32 0, align 4
@IRQ_TIMER = common dso_local global i32 0, align 4
@VORTEX_IRQ_STAT = common dso_local global i32 0, align 4
@IRQ_MIDI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"unknown irq source %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vortex_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VORTEX_STAT, align 4
  %16 = call i32 @hwread(i32 %14, i32 %15)
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %264

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VORTEX_CTRL, align 4
  %26 = call i32 @hwread(i32 %24, i32 %25)
  %27 = load i32, i32* @CTRL_IRQ_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %264

32:                                               ; preds = %21
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VORTEX_IRQ_SOURCE, align 4
  %37 = call i32 @hwread(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VORTEX_IRQ_SOURCE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @hwwrite(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VORTEX_IRQ_SOURCE, align 4
  %48 = call i32 @hwread(i32 %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @IRQ_NONE, align 4
  store i32 %58, i32* %3, align 4
  br label %264

59:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @IRQ_ERR_MASK, align 4
  %62 = and i32 %60, %61
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %126

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @IRQ_FATAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %70, %65
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @IRQ_PARITY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @IRQ_REG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @IRQ_FIFO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %106, %101
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @IRQ_DMA, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %118, %113
  store i32 1, i32* %8, align 4
  br label %126

126:                                              ; preds = %125, %59
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @IRQ_PCMOUT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %219

131:                                              ; preds = %126
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = call i32 @spin_lock(i32* %133)
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %173, %131
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @NR_ADB, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %176

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 6
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @FIFO_START, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %139
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @vortex_adbdma_bufshift(%struct.TYPE_12__* %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %173

156:                                              ; preds = %150
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = call i32 @spin_unlock(i32* %158)
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @snd_pcm_period_elapsed(i32 %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 4
  %171 = call i32 @spin_lock(i32* %170)
  br label %172

172:                                              ; preds = %156, %139
  br label %173

173:                                              ; preds = %172, %155
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %7, align 4
  br label %135

176:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %212, %176
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @NR_WT, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %177
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @FIFO_START, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %211

192:                                              ; preds = %181
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @vortex_wtdma_bufshift(%struct.TYPE_12__* %193, i32 %194)
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 4
  %198 = call i32 @spin_unlock(i32* %197)
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @snd_pcm_period_elapsed(i32 %206)
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 4
  %210 = call i32 @spin_lock(i32* %209)
  br label %211

211:                                              ; preds = %192, %181
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %177

215:                                              ; preds = %177
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 4
  %218 = call i32 @spin_unlock(i32* %217)
  store i32 1, i32* %8, align 4
  br label %219

219:                                              ; preds = %215, %126
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @IRQ_TIMER, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @VORTEX_IRQ_STAT, align 4
  %229 = call i32 @hwread(i32 %227, i32 %228)
  store i32 1, i32* %8, align 4
  br label %230

230:                                              ; preds = %224, %219
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* @IRQ_MIDI, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %230
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = icmp ne %struct.TYPE_10__* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @snd_mpu401_uart_interrupt(i32 %243, i32 %248)
  store i32 1, i32* %8, align 4
  br label %250

250:                                              ; preds = %240, %235, %230
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %9, align 4
  %260 = call i32 (i32, i8*, ...) @dev_err(i32 %258, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %253, %250
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @IRQ_RETVAL(i32 %262)
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %261, %51, %30, %19
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vortex_adbdma_bufshift(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @vortex_wtdma_bufshift(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
