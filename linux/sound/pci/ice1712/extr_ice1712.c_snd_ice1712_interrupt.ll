; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, %struct.snd_pcm_substream**, %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, %struct.TYPE_2__** }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IRQSTAT = common dso_local global i32 0, align 4
@ICE1712_IRQ_MPU1 = common dso_local global i8 0, align 1
@ICE1712_IRQ_TIMER = common dso_local global i8 0, align 1
@ICE1712_IRQ_MPU2 = common dso_local global i8 0, align 1
@ICE1712_IRQ_PROPCM = common dso_local global i8 0, align 1
@IRQ = common dso_local global i32 0, align 4
@ICE1712_MULTI_PBKSTATUS = common dso_local global i8 0, align 1
@ICE1712_MULTI_CAPSTATUS = common dso_local global i8 0, align 1
@ICE1712_IRQ_FM = common dso_local global i8 0, align 1
@ICE1712_IRQ_PBKDS = common dso_local global i8 0, align 1
@INTSTAT = common dso_local global i32 0, align 4
@ICE1712_IRQ_CONCAP = common dso_local global i8 0, align 1
@ICE1712_IRQ_CONPBK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ice1712_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_substream*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.snd_ice1712*
  store %struct.snd_ice1712* %13, %struct.snd_ice1712** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %2, %280
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %16 = load i32, i32* @IRQSTAT, align 4
  %17 = call i32 @ICEREG(%struct.snd_ice1712* %15, i32 %16)
  %18 = call zeroext i8 @inb(i32 %17)
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %281

23:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @ICE1712_IRQ_MPU1, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %23
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_mpu401_uart_interrupt(i32 %38, i32 %45)
  br label %47

47:                                               ; preds = %37, %30
  %48 = load i8, i8* @ICE1712_IRQ_MPU1, align 1
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %50 = load i32, i32* @IRQSTAT, align 4
  %51 = call i32 @ICEREG(%struct.snd_ice1712* %49, i32 %50)
  %52 = call i32 @outb(i8 zeroext %48, i32 %51)
  %53 = load i8, i8* @ICE1712_IRQ_MPU1, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i8, i8* %6, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %6, align 1
  br label %60

60:                                               ; preds = %47, %23
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @ICE1712_IRQ_TIMER, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i8, i8* @ICE1712_IRQ_TIMER, align 1
  %69 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %70 = load i32, i32* @IRQSTAT, align 4
  %71 = call i32 @ICEREG(%struct.snd_ice1712* %69, i32 %70)
  %72 = call i32 @outb(i8 zeroext %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %60
  %74 = load i8, i8* %6, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @ICE1712_IRQ_MPU2, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %73
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %83, i64 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp ne %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %90 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %89, i32 0, i32 5
  %91 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %91, i64 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snd_mpu401_uart_interrupt(i32 %88, i32 %95)
  br label %97

97:                                               ; preds = %87, %80
  %98 = load i8, i8* @ICE1712_IRQ_MPU2, align 1
  %99 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %100 = load i32, i32* @IRQSTAT, align 4
  %101 = call i32 @ICEREG(%struct.snd_ice1712* %99, i32 %100)
  %102 = call i32 @outb(i8 zeroext %98, i32 %101)
  %103 = load i8, i8* @ICE1712_IRQ_MPU2, align 1
  %104 = zext i8 %103 to i32
  %105 = xor i32 %104, -1
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %6, align 1
  br label %110

110:                                              ; preds = %97, %73
  %111 = load i8, i8* %6, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @ICE1712_IRQ_PROPCM, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %168

117:                                              ; preds = %110
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %119 = load i32, i32* @IRQ, align 4
  %120 = call i32 @ICEMT(%struct.snd_ice1712* %118, i32 %119)
  %121 = call zeroext i8 @inb(i32 %120)
  store i8 %121, i8* %8, align 1
  %122 = load i8, i8* %8, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @ICE1712_MULTI_PBKSTATUS, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %117
  %129 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %130 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %129, i32 0, i32 4
  %131 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %130, align 8
  %132 = icmp ne %struct.snd_pcm_substream* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %135 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %134, i32 0, i32 4
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %135, align 8
  %137 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i8, i8* @ICE1712_MULTI_PBKSTATUS, align 1
  %140 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %141 = load i32, i32* @IRQ, align 4
  %142 = call i32 @ICEMT(%struct.snd_ice1712* %140, i32 %141)
  %143 = call i32 @outb(i8 zeroext %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %117
  %145 = load i8, i8* %8, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @ICE1712_MULTI_CAPSTATUS, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %144
  %152 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %153 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %152, i32 0, i32 3
  %154 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %153, align 8
  %155 = icmp ne %struct.snd_pcm_substream* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %158 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %157, i32 0, i32 3
  %159 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %158, align 8
  %160 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load i8, i8* @ICE1712_MULTI_CAPSTATUS, align 1
  %163 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %164 = load i32, i32* @IRQ, align 4
  %165 = call i32 @ICEMT(%struct.snd_ice1712* %163, i32 %164)
  %166 = call i32 @outb(i8 zeroext %162, i32 %165)
  br label %167

167:                                              ; preds = %161, %144
  br label %168

168:                                              ; preds = %167, %110
  %169 = load i8, i8* %6, align 1
  %170 = zext i8 %169 to i32
  %171 = load i8, i8* @ICE1712_IRQ_FM, align 1
  %172 = zext i8 %171 to i32
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i8, i8* @ICE1712_IRQ_FM, align 1
  %177 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %178 = load i32, i32* @IRQSTAT, align 4
  %179 = call i32 @ICEREG(%struct.snd_ice1712* %177, i32 %178)
  %180 = call i32 @outb(i8 zeroext %176, i32 %179)
  br label %181

181:                                              ; preds = %175, %168
  %182 = load i8, i8* %6, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* @ICE1712_IRQ_PBKDS, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %183, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %234

188:                                              ; preds = %181
  %189 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %190 = load i32, i32* @INTSTAT, align 4
  %191 = call i32 @ICEDS(%struct.snd_ice1712* %189, i32 %190)
  %192 = call i32 @inw(i32 %191)
  store i32 %192, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %225, %188
  %194 = load i32, i32* %9, align 4
  %195 = icmp slt i32 %194, 6
  br i1 %195, label %196, label %228

196:                                              ; preds = %193
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %9, align 4
  %199 = mul nsw i32 %198, 2
  %200 = shl i32 3, %199
  %201 = and i32 %197, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  br label %225

204:                                              ; preds = %196
  %205 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %206 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %205, i32 0, i32 2
  %207 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %207, i64 %209
  %211 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %210, align 8
  store %struct.snd_pcm_substream* %211, %struct.snd_pcm_substream** %11, align 8
  %212 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %213 = icmp ne %struct.snd_pcm_substream* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %204
  %215 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %216 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %215)
  br label %217

217:                                              ; preds = %214, %204
  %218 = load i32, i32* %9, align 4
  %219 = mul nsw i32 %218, 2
  %220 = shl i32 3, %219
  %221 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %222 = load i32, i32* @INTSTAT, align 4
  %223 = call i32 @ICEDS(%struct.snd_ice1712* %221, i32 %222)
  %224 = call i32 @outw(i32 %220, i32 %223)
  br label %225

225:                                              ; preds = %217, %203
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %193

228:                                              ; preds = %193
  %229 = load i8, i8* @ICE1712_IRQ_PBKDS, align 1
  %230 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %231 = load i32, i32* @IRQSTAT, align 4
  %232 = call i32 @ICEREG(%struct.snd_ice1712* %230, i32 %231)
  %233 = call i32 @outb(i8 zeroext %229, i32 %232)
  br label %234

234:                                              ; preds = %228, %181
  %235 = load i8, i8* %6, align 1
  %236 = zext i8 %235 to i32
  %237 = load i8, i8* @ICE1712_IRQ_CONCAP, align 1
  %238 = zext i8 %237 to i32
  %239 = and i32 %236, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %234
  %242 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %243 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %242, i32 0, i32 1
  %244 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %243, align 8
  %245 = icmp ne %struct.snd_pcm_substream* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %248 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %247, i32 0, i32 1
  %249 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %248, align 8
  %250 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %249)
  br label %251

251:                                              ; preds = %246, %241
  %252 = load i8, i8* @ICE1712_IRQ_CONCAP, align 1
  %253 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %254 = load i32, i32* @IRQSTAT, align 4
  %255 = call i32 @ICEREG(%struct.snd_ice1712* %253, i32 %254)
  %256 = call i32 @outb(i8 zeroext %252, i32 %255)
  br label %257

257:                                              ; preds = %251, %234
  %258 = load i8, i8* %6, align 1
  %259 = zext i8 %258 to i32
  %260 = load i8, i8* @ICE1712_IRQ_CONPBK, align 1
  %261 = zext i8 %260 to i32
  %262 = and i32 %259, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %257
  %265 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %266 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %265, i32 0, i32 0
  %267 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %266, align 8
  %268 = icmp ne %struct.snd_pcm_substream* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %271 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %270, i32 0, i32 0
  %272 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %271, align 8
  %273 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %272)
  br label %274

274:                                              ; preds = %269, %264
  %275 = load i8, i8* @ICE1712_IRQ_CONPBK, align 1
  %276 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %277 = load i32, i32* @IRQSTAT, align 4
  %278 = call i32 @ICEREG(%struct.snd_ice1712* %276, i32 %277)
  %279 = call i32 @outb(i8 zeroext %275, i32 %278)
  br label %280

280:                                              ; preds = %274, %257
  br label %14

281:                                              ; preds = %22
  %282 = load i32, i32* %7, align 4
  %283 = call i32 @IRQ_RETVAL(i32 %282)
  ret i32 %283
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEREG(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_mpu401_uart_interrupt(i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @ICEDS(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
