; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_trigger_up.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_trigger_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__**, i32, i64, %struct.snd_gus_card* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_gus_card = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i16, i16, i64 }

@SNDRV_GF1_PCM_PFLG_ACTIVE = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_PAN = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_FREQUENCY = common dso_local global i32 0, align 4
@SNDRV_GF1_VA_START = common dso_local global i32 0, align 4
@SNDRV_GF1_VA_END = common dso_local global i32 0, align 4
@SNDRV_GF1_VA_CURRENT = common dso_local global i32 0, align 4
@SNDRV_GF1_VW_VOLUME = common dso_local global i32 0, align 4
@SNDRV_GF1_MIN_VOLUME = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_RATE = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_START = common dso_local global i32 0, align 4
@SNDRV_GF1_MIN_OFFSET = common dso_local global i8 0, align 1
@SNDRV_GF1_VB_VOLUME_END = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_MODE = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_ADDRESS_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_gf1_pcm_trigger_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_pcm_trigger_up(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.gus_pcm_private*, align 8
  %5 = alloca %struct.snd_gus_card*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %3, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 3
  %21 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %20, align 8
  store %struct.gus_pcm_private* %21, %struct.gus_pcm_private** %4, align 8
  %22 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %23 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %22, i32 0, i32 10
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %23, align 8
  store %struct.snd_gus_card* %24, %struct.snd_gus_card** %5, align 8
  %25 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %26 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %25, i32 0, i32 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %30 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SNDRV_GF1_PCM_PFLG_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %37 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %36, i32 0, i32 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %348

40:                                               ; preds = %1
  %41 = load i32, i32* @SNDRV_GF1_PCM_PFLG_ACTIVE, align 4
  %42 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %43 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %47 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %46, i32 0, i32 9
  store i64 0, i64* %47, align 8
  %48 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %49 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %48, i32 0, i32 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 4
  %57 = call zeroext i16 @snd_gf1_translate_freq(%struct.snd_gus_card* %52, i32 %56)
  store i16 %57, i16* %9, align 2
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @snd_pcm_format_width(i32 %60)
  %62 = icmp eq i32 %61, 16
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 36, i32 32
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %7, align 1
  store i8 36, i8* %8, align 1
  %66 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %67 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %40
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %72, 8
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %7, align 1
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, -5
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %8, align 1
  br label %79

79:                                               ; preds = %70, %40
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %253, %79
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %83 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %256

86:                                               ; preds = %80
  %87 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %88 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %92 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = udiv i32 %93, %96
  %98 = mul i32 %90, %97
  %99 = add i32 %89, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %102 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %105 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = mul i32 %103, %106
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = udiv i32 %107, %110
  %112 = add i32 %100, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %115 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = udiv i32 %116, %119
  %121 = add i32 %113, %120
  store i32 %121, i32* %12, align 4
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @snd_pcm_format_width(i32 %124)
  %126 = icmp eq i32 %125, 16
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 2, i32 1
  %129 = load i32, i32* %12, align 4
  %130 = sub i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %141

135:                                              ; preds = %86
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 14
  br label %142

141:                                              ; preds = %86
  br label %142

142:                                              ; preds = %141, %135
  %143 = phi i32 [ %140, %135 ], [ 8, %141 ]
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %149 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i16, i16* %150, align 8
  %152 = zext i16 %151 to i32
  br label %159

153:                                              ; preds = %142
  %154 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %155 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i16, i16* %156, align 2
  %158 = zext i16 %157 to i32
  br label %159

159:                                              ; preds = %153, %147
  %160 = phi i32 [ %152, %147 ], [ %158, %153 ]
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %13, align 2
  %162 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %163 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %162, i32 0, i32 0
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %167 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %168 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %167, i32 0, i32 7
  %169 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %169, i64 %171
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %166, i32 %175)
  %177 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %178 = load i32, i32* @SNDRV_GF1_VB_PAN, align 4
  %179 = load i8, i8* %14, align 1
  %180 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %177, i32 %178, i8 zeroext %179)
  %181 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %182 = load i32, i32* @SNDRV_GF1_VW_FREQUENCY, align 4
  %183 = load i16, i16* %9, align 2
  %184 = zext i16 %183 to i32
  %185 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %181, i32 %182, i32 %184)
  %186 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %187 = load i32, i32* @SNDRV_GF1_VA_START, align 4
  %188 = load i32, i32* %11, align 4
  %189 = shl i32 %188, 4
  %190 = load i8, i8* %7, align 1
  %191 = zext i8 %190 to i32
  %192 = and i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = call i32 @snd_gf1_write_addr(%struct.snd_gus_card* %186, i32 %187, i32 %189, i8 zeroext %193)
  %195 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %196 = load i32, i32* @SNDRV_GF1_VA_END, align 4
  %197 = load i32, i32* %12, align 4
  %198 = shl i32 %197, 4
  %199 = load i8, i8* %7, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 4
  %202 = trunc i32 %201 to i8
  %203 = call i32 @snd_gf1_write_addr(%struct.snd_gus_card* %195, i32 %196, i32 %198, i8 zeroext %202)
  %204 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %205 = load i32, i32* @SNDRV_GF1_VA_CURRENT, align 4
  %206 = load i32, i32* %10, align 4
  %207 = shl i32 %206, 4
  %208 = load i8, i8* %7, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = call i32 @snd_gf1_write_addr(%struct.snd_gus_card* %204, i32 %205, i32 %207, i8 zeroext %211)
  %213 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %214 = load i32, i32* @SNDRV_GF1_VW_VOLUME, align 4
  %215 = load i32, i32* @SNDRV_GF1_MIN_VOLUME, align 4
  %216 = shl i32 %215, 4
  %217 = call i32 @snd_gf1_write16(%struct.snd_gus_card* %213, i32 %214, i32 %216)
  %218 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %219 = load i32, i32* @SNDRV_GF1_VB_VOLUME_RATE, align 4
  %220 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %218, i32 %219, i8 zeroext 47)
  %221 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %222 = load i32, i32* @SNDRV_GF1_VB_VOLUME_START, align 4
  %223 = load i8, i8* @SNDRV_GF1_MIN_OFFSET, align 1
  %224 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %221, i32 %222, i8 zeroext %223)
  %225 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %226 = load i32, i32* @SNDRV_GF1_VB_VOLUME_END, align 4
  %227 = load i16, i16* %13, align 2
  %228 = zext i16 %227 to i32
  %229 = ashr i32 %228, 8
  %230 = trunc i32 %229 to i8
  %231 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %225, i32 %226, i8 zeroext %230)
  %232 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %233 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %234 = load i8, i8* %8, align 1
  %235 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %232, i32 %233, i8 zeroext %234)
  %236 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %237 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %248, label %241

241:                                              ; preds = %159
  %242 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %243 = call i32 @snd_gf1_delay(%struct.snd_gus_card* %242)
  %244 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %245 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %246 = load i8, i8* %8, align 1
  %247 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %244, i32 %245, i8 zeroext %246)
  br label %248

248:                                              ; preds = %241, %159
  %249 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %250 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %249, i32 0, i32 0
  %251 = load i64, i64* %6, align 8
  %252 = call i32 @spin_unlock_irqrestore(i32* %250, i64 %251)
  br label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %15, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %15, align 4
  br label %80

256:                                              ; preds = %80
  %257 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %258 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %257, i32 0, i32 0
  %259 = load i64, i64* %6, align 8
  %260 = call i32 @spin_lock_irqsave(i32* %258, i64 %259)
  store i32 0, i32* %15, align 4
  br label %261

261:                                              ; preds = %297, %256
  %262 = load i32, i32* %15, align 4
  %263 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %264 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp ult i32 %262, %265
  br i1 %266, label %267, label %300

267:                                              ; preds = %261
  %268 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %269 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %270 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %269, i32 0, i32 7
  %271 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %270, align 8
  %272 = load i32, i32* %15, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %271, i64 %273
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %268, i32 %277)
  %279 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %280 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %267
  %285 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %286 = load i32, i32* @SNDRV_GF1_VB_MODE, align 4
  %287 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %285, i32 %286, i8 zeroext 0)
  br label %288

288:                                              ; preds = %284, %267
  %289 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %290 = load i32, i32* @SNDRV_GF1_VB_ADDRESS_CONTROL, align 4
  %291 = load i8, i8* %7, align 1
  %292 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %289, i32 %290, i8 zeroext %291)
  %293 = load i8, i8* %7, align 1
  %294 = zext i8 %293 to i32
  %295 = and i32 %294, -33
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %7, align 1
  br label %297

297:                                              ; preds = %288
  %298 = load i32, i32* %15, align 4
  %299 = add i32 %298, 1
  store i32 %299, i32* %15, align 4
  br label %261

300:                                              ; preds = %261
  %301 = load i8, i8* %7, align 1
  %302 = zext i8 %301 to i32
  %303 = or i32 %302, 32
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %7, align 1
  %305 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %306 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %343, label %310

310:                                              ; preds = %300
  %311 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %312 = call i32 @snd_gf1_delay(%struct.snd_gus_card* %311)
  store i32 0, i32* %15, align 4
  br label %313

313:                                              ; preds = %339, %310
  %314 = load i32, i32* %15, align 4
  %315 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %316 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = icmp ult i32 %314, %317
  br i1 %318, label %319, label %342

319:                                              ; preds = %313
  %320 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %321 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %4, align 8
  %322 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %321, i32 0, i32 7
  %323 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %322, align 8
  %324 = load i32, i32* %15, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %323, i64 %325
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %320, i32 %329)
  %331 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %332 = load i32, i32* @SNDRV_GF1_VB_ADDRESS_CONTROL, align 4
  %333 = load i8, i8* %7, align 1
  %334 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %331, i32 %332, i8 zeroext %333)
  %335 = load i8, i8* %7, align 1
  %336 = zext i8 %335 to i32
  %337 = and i32 %336, -33
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %7, align 1
  br label %339

339:                                              ; preds = %319
  %340 = load i32, i32* %15, align 4
  %341 = add i32 %340, 1
  store i32 %341, i32* %15, align 4
  br label %313

342:                                              ; preds = %313
  br label %343

343:                                              ; preds = %342, %300
  %344 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %345 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %344, i32 0, i32 0
  %346 = load i64, i64* %6, align 8
  %347 = call i32 @spin_unlock_irqrestore(i32* %345, i64 %346)
  br label %348

348:                                              ; preds = %343, %35
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local zeroext i16 @snd_gf1_translate_freq(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_gf1_select_voice(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i8 zeroext) #1

declare dso_local i32 @snd_gf1_write16(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_write_addr(%struct.snd_gus_card*, i32, i32, i8 zeroext) #1

declare dso_local i32 @snd_gf1_delay(%struct.snd_gus_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
