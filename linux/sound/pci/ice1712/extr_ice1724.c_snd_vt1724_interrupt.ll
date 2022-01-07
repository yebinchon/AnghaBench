; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i64, i64, i64*, i64, i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VT1724_IRQ_MPU_RX = common dso_local global i8 0, align 1
@VT1724_IRQ_MPU_TX = common dso_local global i8 0, align 1
@VT1724_IRQ_MTPCM = common dso_local global i8 0, align 1
@IRQSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Too long irq loop, status = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Disabling MPU_TX\0A\00", align 1
@IRQ = common dso_local global i32 0, align 4
@VT1724_MULTI_PDMA0 = common dso_local global i8 0, align 1
@VT1724_MULTI_RDMA0 = common dso_local global i8 0, align 1
@VT1724_MULTI_PDMA1 = common dso_local global i8 0, align 1
@VT1724_MULTI_PDMA2 = common dso_local global i8 0, align 1
@VT1724_MULTI_PDMA3 = common dso_local global i8 0, align 1
@VT1724_MULTI_PDMA4 = common dso_local global i8 0, align 1
@VT1724_MULTI_RDMA1 = common dso_local global i8 0, align 1
@VT1724_MULTI_FIFO_ERR = common dso_local global i8 0, align 1
@DMA_FIFO_ERR = common dso_local global i32 0, align 4
@DMA_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_vt1724_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.snd_ice1712*
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %5, align 8
  %14 = load i8, i8* @VT1724_IRQ_MPU_RX, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @VT1724_IRQ_MPU_TX, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i8, i8* @VT1724_IRQ_MTPCM, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %2, %317
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %25 = load i32, i32* @IRQSTAT, align 4
  %26 = call i32 @ICEREG1724(%struct.snd_ice1712* %24, i32 %25)
  %27 = call zeroext i8 @inb(i32 %26)
  store i8 %27, i8* %6, align 1
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %318

38:                                               ; preds = %23
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 5
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = icmp sgt i32 %43, 10
  br i1 %44, label %45, label %78

45:                                               ; preds = %38
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %47 = load i32, i32* @IRQSTAT, align 4
  %48 = call i32 @ICEREG1724(%struct.snd_ice1712* %46, i32 %47)
  %49 = call zeroext i8 @inb(i32 %48)
  store i8 %49, i8* %6, align 1
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %51 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %50, i32 0, i32 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @VT1724_IRQ_MPU_TX, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %45
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %72 = load i8, i8* @VT1724_IRQ_MPU_TX, align 1
  %73 = call i32 @enable_midi_irq(%struct.snd_ice1712* %71, i8 zeroext %72, i32 0)
  br label %74

74:                                               ; preds = %64, %45
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %76 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %75, i32 0, i32 5
  %77 = call i32 @spin_unlock(i32* %76)
  br label %318

78:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @VT1724_IRQ_MPU_TX, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %92 = call i32 @vt1724_midi_write(%struct.snd_ice1712* %91)
  br label %97

93:                                               ; preds = %85
  %94 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %95 = load i8, i8* @VT1724_IRQ_MPU_TX, align 1
  %96 = call i32 @enable_midi_irq(%struct.snd_ice1712* %94, i8 zeroext %95, i32 0)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i8, i8* @VT1724_IRQ_MPU_TX, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %99, -1
  %101 = load i8, i8* %7, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %7, align 1
  br label %105

105:                                              ; preds = %97, %78
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @VT1724_IRQ_MPU_RX, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %114 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %119 = call i32 @vt1724_midi_read(%struct.snd_ice1712* %118)
  br label %123

120:                                              ; preds = %112
  %121 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %122 = call i32 @vt1724_midi_clear_rx(%struct.snd_ice1712* %121)
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %105
  %125 = load i8, i8* %6, align 1
  %126 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %127 = load i32, i32* @IRQSTAT, align 4
  %128 = call i32 @ICEREG1724(%struct.snd_ice1712* %126, i32 %127)
  %129 = call i32 @outb(i8 zeroext %125, i32 %128)
  %130 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %131 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %130, i32 0, i32 5
  %132 = call i32 @spin_unlock(i32* %131)
  %133 = load i8, i8* %6, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @VT1724_IRQ_MTPCM, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %134, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %317

139:                                              ; preds = %124
  %140 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %141 = load i32, i32* @IRQ, align 4
  %142 = call i32 @ICEMT1724(%struct.snd_ice1712* %140, i32 %141)
  %143 = call zeroext i8 @inb(i32 %142)
  store i8 %143, i8* %10, align 1
  %144 = load i8, i8* %10, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* @VT1724_MULTI_PDMA0, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %139
  %151 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %152 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %157 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @snd_pcm_period_elapsed(i64 %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %139
  %162 = load i8, i8* %10, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* @VT1724_MULTI_RDMA0, align 1
  %165 = zext i8 %164 to i32
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %161
  %169 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %170 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %175 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @snd_pcm_period_elapsed(i64 %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %161
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i32
  %182 = load i8, i8* @VT1724_MULTI_PDMA1, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %181, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %179
  %187 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %188 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %195 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %194, i32 0, i32 2
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @snd_pcm_period_elapsed(i64 %198)
  br label %200

200:                                              ; preds = %193, %186
  br label %201

201:                                              ; preds = %200, %179
  %202 = load i8, i8* %10, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8, i8* @VT1724_MULTI_PDMA2, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %203, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %201
  %209 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %210 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %209, i32 0, i32 2
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %217 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @snd_pcm_period_elapsed(i64 %220)
  br label %222

222:                                              ; preds = %215, %208
  br label %223

223:                                              ; preds = %222, %201
  %224 = load i8, i8* %10, align 1
  %225 = zext i8 %224 to i32
  %226 = load i8, i8* @VT1724_MULTI_PDMA3, align 1
  %227 = zext i8 %226 to i32
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %223
  %231 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %232 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %231, i32 0, i32 2
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %230
  %238 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %239 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %238, i32 0, i32 2
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 2
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @snd_pcm_period_elapsed(i64 %242)
  br label %244

244:                                              ; preds = %237, %230
  br label %245

245:                                              ; preds = %244, %223
  %246 = load i8, i8* %10, align 1
  %247 = zext i8 %246 to i32
  %248 = load i8, i8* @VT1724_MULTI_PDMA4, align 1
  %249 = zext i8 %248 to i32
  %250 = and i32 %247, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %245
  %253 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %254 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %259 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @snd_pcm_period_elapsed(i64 %260)
  br label %262

262:                                              ; preds = %257, %252
  br label %263

263:                                              ; preds = %262, %245
  %264 = load i8, i8* %10, align 1
  %265 = zext i8 %264 to i32
  %266 = load i8, i8* @VT1724_MULTI_RDMA1, align 1
  %267 = zext i8 %266 to i32
  %268 = and i32 %265, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %263
  %271 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %272 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %277 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @snd_pcm_period_elapsed(i64 %278)
  br label %280

280:                                              ; preds = %275, %270
  br label %281

281:                                              ; preds = %280, %263
  %282 = load i8, i8* %10, align 1
  %283 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %284 = load i32, i32* @IRQ, align 4
  %285 = call i32 @ICEMT1724(%struct.snd_ice1712* %283, i32 %284)
  %286 = call i32 @outb(i8 zeroext %282, i32 %285)
  %287 = load i8, i8* %10, align 1
  %288 = zext i8 %287 to i32
  %289 = load i8, i8* @VT1724_MULTI_FIFO_ERR, align 1
  %290 = zext i8 %289 to i32
  %291 = and i32 %288, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %316

293:                                              ; preds = %281
  %294 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %295 = load i32, i32* @DMA_FIFO_ERR, align 4
  %296 = call i32 @ICEMT1724(%struct.snd_ice1712* %294, i32 %295)
  %297 = call zeroext i8 @inb(i32 %296)
  store i8 %297, i8* %11, align 1
  %298 = load i8, i8* %11, align 1
  %299 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %300 = load i32, i32* @DMA_FIFO_ERR, align 4
  %301 = call i32 @ICEMT1724(%struct.snd_ice1712* %299, i32 %300)
  %302 = call i32 @outb(i8 zeroext %298, i32 %301)
  %303 = load i8, i8* @VT1724_MULTI_FIFO_ERR, align 1
  %304 = zext i8 %303 to i32
  %305 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %306 = load i32, i32* @DMA_INT_MASK, align 4
  %307 = call i32 @ICEMT1724(%struct.snd_ice1712* %305, i32 %306)
  %308 = call zeroext i8 @inb(i32 %307)
  %309 = zext i8 %308 to i32
  %310 = or i32 %304, %309
  %311 = trunc i32 %310 to i8
  %312 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %313 = load i32, i32* @DMA_INT_MASK, align 4
  %314 = call i32 @ICEMT1724(%struct.snd_ice1712* %312, i32 %313)
  %315 = call i32 @outb(i8 zeroext %311, i32 %314)
  br label %316

316:                                              ; preds = %293, %281
  br label %317

317:                                              ; preds = %316, %124
  br label %23

318:                                              ; preds = %74, %37
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @IRQ_RETVAL(i32 %319)
  ret i32 %320
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @enable_midi_irq(%struct.snd_ice1712*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vt1724_midi_write(%struct.snd_ice1712*) #1

declare dso_local i32 @vt1724_midi_read(%struct.snd_ice1712*) #1

declare dso_local i32 @vt1724_midi_clear_rx(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
