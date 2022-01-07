; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cs4281.c_snd_cs4281_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4281 = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cs4281_dma = type { i32, i32, i64, i64, i32, i32, i64, i32, i64, i32, i64 }
%struct.snd_pcm_runtime = type { i32, i64, i64, i32, i32, i32 }

@BA0_DMR_TYPE_SINGLE = common dso_local global i32 0, align 4
@BA0_DMR_AUTO = common dso_local global i32 0, align 4
@BA0_DMR_TR_WRITE = common dso_local global i32 0, align 4
@BA0_DMR_TR_READ = common dso_local global i32 0, align 4
@BA0_DMR_MONO = common dso_local global i32 0, align 4
@BA0_DMR_USIGN = common dso_local global i32 0, align 4
@BA0_DMR_BEND = common dso_local global i32 0, align 4
@BA0_DMR_SIZE8 = common dso_local global i32 0, align 4
@BA0_DMR_SWAPC = common dso_local global i32 0, align 4
@BA0_DMR_SIZE20 = common dso_local global i32 0, align 4
@BA0_DCR_TCIE = common dso_local global i32 0, align 4
@BA0_DCR_MSK = common dso_local global i32 0, align 4
@BA0_DCR_HTCIE = common dso_local global i32 0, align 4
@BA0_SRCSA = common dso_local global i64 0, align 8
@BA0_DACSR = common dso_local global i64 0, align 8
@BA0_ADCSR = common dso_local global i64 0, align 8
@BA0_FCR0 = common dso_local global i64 0, align 8
@BA0_FCR_FEN = common dso_local global i32 0, align 4
@CS4281_FIFO_SIZE = common dso_local global i32 0, align 4
@BA0_FCR_PSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4281*, %struct.cs4281_dma*, %struct.snd_pcm_runtime*, i32, i32)* @snd_cs4281_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4281_mode(%struct.cs4281* %0, %struct.cs4281_dma* %1, %struct.snd_pcm_runtime* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cs4281*, align 8
  %7 = alloca %struct.cs4281_dma*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cs4281* %0, %struct.cs4281** %6, align 8
  store %struct.cs4281_dma* %1, %struct.cs4281_dma** %7, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @BA0_DMR_TYPE_SINGLE, align 4
  %15 = load i32, i32* @BA0_DMR_AUTO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @BA0_DMR_TR_WRITE, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @BA0_DMR_TR_READ, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = or i32 %16, %24
  %26 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %27 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i32, i32* @BA0_DMR_MONO, align 4
  %34 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %35 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %23
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @snd_pcm_format_unsigned(i32 %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @BA0_DMR_USIGN, align 4
  %46 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %47 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @snd_pcm_format_big_endian(i32 %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @BA0_DMR_BEND, align 4
  %58 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %59 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snd_pcm_format_width(i32 %65)
  switch i32 %66, label %90 [
    i32 8, label %67
    i32 32, label %84
  ]

67:                                               ; preds = %62
  %68 = load i32, i32* @BA0_DMR_SIZE8, align 4
  %69 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %70 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* @BA0_DMR_SWAPC, align 4
  %79 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %80 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %67
  br label %90

84:                                               ; preds = %62
  %85 = load i32, i32* @BA0_DMR_SIZE20, align 4
  %86 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %87 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %62, %84, %83
  %91 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %92 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %91, i32 0, i32 10
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @BA0_DCR_TCIE, align 4
  %94 = load i32, i32* @BA0_DCR_MSK, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %97 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %90
  %106 = load i32, i32* @BA0_DCR_HTCIE, align 4
  %107 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %108 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %90
  %112 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %113 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %114 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %112, i64 %115, i32 %118)
  %120 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %121 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %122 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %120, i64 %123, i32 %128)
  %130 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %131 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %130, i32 0, i32 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @BA0_DMR_MONO, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @BA0_DMR_MONO, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %11, align 4
  %141 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %142 = load i64, i64* @BA0_SRCSA, align 8
  %143 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %144 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 0
  %147 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %148 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = or i32 %146, %150
  %152 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %153 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 16
  %156 = or i32 %151, %155
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %111
  br label %164

160:                                              ; preds = %111
  %161 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %162 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  br label %164

164:                                              ; preds = %160, %159
  %165 = phi i32 [ 31, %159 ], [ %163, %160 ]
  %166 = shl i32 %165, 24
  %167 = or i32 %156, %166
  %168 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %141, i64 %142, i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164
  br label %230

172:                                              ; preds = %164
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %172
  %176 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %177 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %180 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %175
  %184 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %185 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @snd_cs4281_rate(i32 %186, i32* null)
  store i32 %187, i32* %12, align 4
  %188 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %189 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %192 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %190, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @snd_BUG_ON(i32 %195)
  %197 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %198 = load i64, i64* @BA0_DACSR, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %197, i64 %198, i32 %199)
  br label %201

201:                                              ; preds = %183, %175
  br label %229

202:                                              ; preds = %172
  %203 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %204 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %207 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %205, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %202
  %211 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %212 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @snd_cs4281_rate(i32 %213, i32* null)
  store i32 %214, i32* %13, align 4
  %215 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %216 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %219 = getelementptr inbounds %struct.cs4281, %struct.cs4281* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %217, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @snd_BUG_ON(i32 %222)
  %224 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %225 = load i64, i64* @BA0_ADCSR, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %224, i64 %225, i32 %226)
  br label %228

228:                                              ; preds = %210, %202
  br label %229

229:                                              ; preds = %228, %201
  br label %230

230:                                              ; preds = %229, %171
  %231 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %232 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @BA0_FCR0, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %230
  %237 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %238 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %239 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %242 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %243 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @snd_cs4281_peekBA0(%struct.cs4281* %241, i64 %244)
  %246 = load i32, i32* @BA0_FCR_FEN, align 4
  %247 = xor i32 %246, -1
  %248 = and i32 %245, %247
  %249 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %237, i64 %240, i32 %248)
  br label %250

250:                                              ; preds = %236, %230
  %251 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %252 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @BA0_FCR_LS(i32 %253)
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %250
  %258 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %259 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @BA0_DMR_MONO, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  br label %269

265:                                              ; preds = %257, %250
  %266 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %267 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  br label %269

269:                                              ; preds = %265, %264
  %270 = phi i32 [ 31, %264 ], [ %268, %265 ]
  %271 = call i32 @BA0_FCR_RS(i32 %270)
  %272 = or i32 %254, %271
  %273 = load i32, i32* @CS4281_FIFO_SIZE, align 4
  %274 = call i32 @BA0_FCR_SZ(i32 %273)
  %275 = or i32 %272, %274
  %276 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %277 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @BA0_FCR_OF(i32 %278)
  %280 = or i32 %275, %279
  %281 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %282 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %281, i32 0, i32 7
  store i32 %280, i32* %282, align 8
  %283 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %284 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %285 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %284, i32 0, i32 6
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %288 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %269
  %293 = load i32, i32* @BA0_FCR_PSH, align 4
  br label %295

294:                                              ; preds = %269
  br label %295

295:                                              ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ]
  %297 = or i32 %289, %296
  %298 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %283, i64 %286, i32 %297)
  %299 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %300 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @BA0_FCR0, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %315

304:                                              ; preds = %295
  %305 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %306 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %307 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %310 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @BA0_FCR_FEN, align 4
  %313 = or i32 %311, %312
  %314 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %305, i64 %308, i32 %313)
  br label %315

315:                                              ; preds = %304, %295
  %316 = load %struct.cs4281*, %struct.cs4281** %6, align 8
  %317 = load %struct.cs4281_dma*, %struct.cs4281_dma** %7, align 8
  %318 = getelementptr inbounds %struct.cs4281_dma, %struct.cs4281_dma* %317, i32 0, i32 8
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @snd_cs4281_pokeBA0(%struct.cs4281* %316, i64 %319, i32 0)
  ret void
}

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i64 @snd_pcm_format_big_endian(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_cs4281_pokeBA0(%struct.cs4281*, i64, i32) #1

declare dso_local i32 @snd_cs4281_rate(i32, i32*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_cs4281_peekBA0(%struct.cs4281*, i64) #1

declare dso_local i32 @BA0_FCR_LS(i32) #1

declare dso_local i32 @BA0_FCR_RS(i32) #1

declare dso_local i32 @BA0_FCR_SZ(i32) #1

declare dso_local i32 @BA0_FCR_OF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
