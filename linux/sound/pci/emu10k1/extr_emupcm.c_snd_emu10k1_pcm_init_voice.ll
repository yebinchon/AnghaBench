; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_init_voice.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_init_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.snd_emu10k1_voice = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_emu10k1_pcm_mixer = type { i32**, i32** }

@CPF = common dso_local global i32 0, align 4
@CPF_STEREO_MASK = common dso_local global i32 0, align 4
@A_FXRT1 = common dso_local global i32 0, align 4
@A_FXRT2 = common dso_local global i32 0, align 4
@A_SENDAMOUNTS = common dso_local global i32 0, align 4
@FXRT = common dso_local global i32 0, align 4
@PTRX = common dso_local global i32 0, align 4
@DSL = common dso_local global i32 0, align 4
@PSST = common dso_local global i32 0, align 4
@PITCH_48000 = common dso_local global i32 0, align 4
@CCCA = common dso_local global i32 0, align 4
@CCCA_8BITSELECT = common dso_local global i32 0, align 4
@Z1 = common dso_local global i32 0, align 4
@Z2 = common dso_local global i32 0, align 4
@MAP_PTI_MASK1 = common dso_local global i32 0, align 4
@MAP_PTI_MASK0 = common dso_local global i32 0, align 4
@MAPA = common dso_local global i32 0, align 4
@MAPB = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@ATKHLDM = common dso_local global i32 0, align 4
@DCYSUSM = common dso_local global i32 0, align 4
@LFOVAL1 = common dso_local global i32 0, align 4
@LFOVAL2 = common dso_local global i32 0, align 4
@FMMOD = common dso_local global i32 0, align 4
@TREMFRQ = common dso_local global i32 0, align 4
@FM2FRQ2 = common dso_local global i32 0, align 4
@ENVVAL = common dso_local global i32 0, align 4
@ATKHLDV = common dso_local global i32 0, align 4
@ENVVOL = common dso_local global i32 0, align 4
@PEFE_FILTERAMOUNT = common dso_local global i32 0, align 4
@PEFE_PITCHAMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, i32, i32, %struct.snd_emu10k1_voice*, i32, i32, %struct.snd_emu10k1_pcm_mixer*)* @snd_emu10k1_pcm_init_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_pcm_init_voice(%struct.snd_emu10k1* %0, i32 %1, i32 %2, %struct.snd_emu10k1_voice* %3, i32 %4, i32 %5, %struct.snd_emu10k1_pcm_mixer* %6) #0 {
  %8 = alloca %struct.snd_emu10k1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_emu10k1_voice*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %15 = alloca %struct.snd_pcm_substream*, align 8
  %16 = alloca %struct.snd_pcm_runtime*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [8 x i8], align 1
  %23 = alloca [8 x i8], align 1
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.snd_emu10k1_voice* %3, %struct.snd_emu10k1_voice** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.snd_emu10k1_pcm_mixer* %6, %struct.snd_emu10k1_pcm_mixer** %14, align 8
  %27 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %30, align 8
  store %struct.snd_pcm_substream* %31, %struct.snd_pcm_substream** %15, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %33, align 8
  store %struct.snd_pcm_runtime* %34, %struct.snd_pcm_runtime** %16, align 8
  %35 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %19, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %20, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_pcm_format_width(i32 %45)
  %47 = icmp eq i32 %46, 16
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %7
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = lshr i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = lshr i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %54, %51, %7
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = lshr i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 2
  %70 = load i64, i64* %24, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %76 = call i32 @memset(i8* %75, i32 0, i32 8)
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 1
  store i8 1, i8* %78, align 1
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 2
  store i8 2, i8* %79, align 1
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 3
  store i8 3, i8* %80, align 1
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %82 = call i32 @memset(i8* %81, i32 0, i32 8)
  br label %114

83:                                               ; preds = %67
  %84 = load i32, i32* %20, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 2
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i32 [ %90, %86 ], [ 0, %91 ]
  store i32 %93, i32* %18, align 4
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %95 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %14, align 8
  %96 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = call i32 @memcpy(i8* %94, i32* %102, i32 8)
  %104 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %105 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %14, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = call i32 @memcpy(i8* %104, i32* %112, i32 8)
  br label %114

114:                                              ; preds = %92, %74
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %21, align 4
  %117 = call i32 @emu10k1_ccis(i32 %115, i32 %116)
  store i32 %117, i32* %26, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %26, align 4
  %123 = add i32 %121, %122
  %124 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %11, align 8
  %125 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %120
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %136 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %134, %137
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %130, %120
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  %148 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %149 = load i32, i32* @CPF, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* @CPF_STEREO_MASK, align 4
  %152 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %154 = load i32, i32* @CPF, align 4
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @CPF_STEREO_MASK, align 4
  %158 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %153, i32 %154, i32 %156, i32 %157)
  br label %164

159:                                              ; preds = %144, %141
  %160 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %161 = load i32, i32* @CPF, align 4
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %160, i32 %161, i32 %162, i32 0)
  br label %164

164:                                              ; preds = %159, %147
  br label %165

165:                                              ; preds = %164, %114
  %166 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %167 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %205

170:                                              ; preds = %165
  %171 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %172 = load i32, i32* @A_FXRT1, align 4
  %173 = load i32, i32* %19, align 4
  %174 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %175 = call i32 @snd_emu10k1_compose_audigy_fxrt1(i8* %174)
  %176 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %171, i32 %172, i32 %173, i32 %175)
  %177 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %178 = load i32, i32* @A_FXRT2, align 4
  %179 = load i32, i32* %19, align 4
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %181 = call i32 @snd_emu10k1_compose_audigy_fxrt2(i8* %180)
  %182 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %177, i32 %178, i32 %179, i32 %181)
  %183 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %184 = load i32, i32* @A_SENDAMOUNTS, align 4
  %185 = load i32, i32* %19, align 4
  %186 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 4
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 24
  %190 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 5
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = shl i32 %192, 16
  %194 = or i32 %189, %193
  %195 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 6
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = shl i32 %197, 8
  %199 = or i32 %194, %198
  %200 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 7
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = or i32 %199, %202
  %204 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %183, i32 %184, i32 %185, i32 %203)
  br label %212

205:                                              ; preds = %165
  %206 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %207 = load i32, i32* @FXRT, align 4
  %208 = load i32, i32* %19, align 4
  %209 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %210 = call i32 @snd_emu10k1_compose_send_routing(i8* %209)
  %211 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %206, i32 %207, i32 %208, i32 %210)
  br label %212

212:                                              ; preds = %205, %170
  %213 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %214 = load i32, i32* @PTRX, align 4
  %215 = load i32, i32* %19, align 4
  %216 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = shl i32 %218, 8
  %220 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = or i32 %219, %222
  %224 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %213, i32 %214, i32 %215, i32 %223)
  %225 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %226 = load i32, i32* @DSL, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %13, align 4
  %229 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 3
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = shl i32 %231, 24
  %233 = or i32 %228, %232
  %234 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %225, i32 %226, i32 %227, i32 %233)
  %235 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %236 = load i32, i32* @PSST, align 4
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %212
  %242 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %243 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  br label %246

245:                                              ; preds = %212
  br label %246

246:                                              ; preds = %245, %241
  %247 = phi i32 [ %244, %241 ], [ 0, %245 ]
  %248 = add i32 %238, %247
  %249 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 2
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = shl i32 %251, 24
  %253 = or i32 %248, %252
  %254 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %235, i32 %236, i32 %237, i32 %253)
  %255 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %256 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %255, i32 0, i32 4
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %246
  %262 = load i32, i32* @PITCH_48000, align 4
  store i32 %262, i32* %25, align 4
  br label %268

263:                                              ; preds = %246
  %264 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %265 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @emu10k1_calc_pitch_target(i32 %266)
  store i32 %267, i32* %25, align 4
  br label %268

268:                                              ; preds = %263, %261
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %288

271:                                              ; preds = %268
  %272 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %273 = load i32, i32* @CCCA, align 4
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %25, align 4
  %277 = call i32 @emu10k1_select_interprom(i32 %276)
  %278 = or i32 %275, %277
  %279 = load i32, i32* %21, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  br label %284

282:                                              ; preds = %271
  %283 = load i32, i32* @CCCA_8BITSELECT, align 4
  br label %284

284:                                              ; preds = %282, %281
  %285 = phi i32 [ 0, %281 ], [ %283, %282 ]
  %286 = or i32 %278, %285
  %287 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %272, i32 %273, i32 %274, i32 %286)
  br label %307

288:                                              ; preds = %268
  %289 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %290 = load i32, i32* @CCCA, align 4
  %291 = load i32, i32* %19, align 4
  %292 = load i32, i32* %12, align 4
  %293 = load i32, i32* %26, align 4
  %294 = add i32 %292, %293
  %295 = load i32, i32* %25, align 4
  %296 = call i32 @emu10k1_select_interprom(i32 %295)
  %297 = or i32 %294, %296
  %298 = load i32, i32* %21, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %288
  br label %303

301:                                              ; preds = %288
  %302 = load i32, i32* @CCCA_8BITSELECT, align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi i32 [ 0, %300 ], [ %302, %301 ]
  %305 = or i32 %297, %304
  %306 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %289, i32 %290, i32 %291, i32 %305)
  br label %307

307:                                              ; preds = %303, %284
  %308 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %309 = load i32, i32* @Z1, align 4
  %310 = load i32, i32* %19, align 4
  %311 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %308, i32 %309, i32 %310, i32 0)
  %312 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %313 = load i32, i32* @Z2, align 4
  %314 = load i32, i32* %19, align 4
  %315 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %312, i32 %313, i32 %314, i32 0)
  %316 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %317 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %322 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = shl i32 %320, %323
  %325 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %326 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %307
  %330 = load i32, i32* @MAP_PTI_MASK1, align 4
  br label %333

331:                                              ; preds = %307
  %332 = load i32, i32* @MAP_PTI_MASK0, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i32 [ %330, %329 ], [ %332, %331 ]
  %335 = or i32 %324, %334
  store i32 %335, i32* %17, align 4
  %336 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %337 = load i32, i32* @MAPA, align 4
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* %17, align 4
  %340 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %336, i32 %337, i32 %338, i32 %339)
  %341 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %342 = load i32, i32* @MAPB, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %17, align 4
  %345 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %341, i32 %342, i32 %343, i32 %344)
  %346 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %347 = load i32, i32* @CVCF, align 4
  %348 = load i32, i32* %19, align 4
  %349 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %346, i32 %347, i32 %348, i32 65535)
  %350 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %351 = load i32, i32* @VTFT, align 4
  %352 = load i32, i32* %19, align 4
  %353 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %350, i32 %351, i32 %352, i32 65535)
  %354 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %355 = load i32, i32* @ATKHLDM, align 4
  %356 = load i32, i32* %19, align 4
  %357 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %354, i32 %355, i32 %356, i32 0)
  %358 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %359 = load i32, i32* @DCYSUSM, align 4
  %360 = load i32, i32* %19, align 4
  %361 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %358, i32 %359, i32 %360, i32 127)
  %362 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %363 = load i32, i32* @LFOVAL1, align 4
  %364 = load i32, i32* %19, align 4
  %365 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %362, i32 %363, i32 %364, i32 32768)
  %366 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %367 = load i32, i32* @LFOVAL2, align 4
  %368 = load i32, i32* %19, align 4
  %369 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %366, i32 %367, i32 %368, i32 32768)
  %370 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %371 = load i32, i32* @FMMOD, align 4
  %372 = load i32, i32* %19, align 4
  %373 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %370, i32 %371, i32 %372, i32 0)
  %374 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %375 = load i32, i32* @TREMFRQ, align 4
  %376 = load i32, i32* %19, align 4
  %377 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %374, i32 %375, i32 %376, i32 0)
  %378 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %379 = load i32, i32* @FM2FRQ2, align 4
  %380 = load i32, i32* %19, align 4
  %381 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %378, i32 %379, i32 %380, i32 0)
  %382 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %383 = load i32, i32* @ENVVAL, align 4
  %384 = load i32, i32* %19, align 4
  %385 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %382, i32 %383, i32 %384, i32 32768)
  %386 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %387 = load i32, i32* @ATKHLDV, align 4
  %388 = load i32, i32* %19, align 4
  %389 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %386, i32 %387, i32 %388, i32 32639)
  %390 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %391 = load i32, i32* @ENVVOL, align 4
  %392 = load i32, i32* %19, align 4
  %393 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %390, i32 %391, i32 %392, i32 0)
  %394 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %395 = load i32, i32* @PEFE_FILTERAMOUNT, align 4
  %396 = load i32, i32* %19, align 4
  %397 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %394, i32 %395, i32 %396, i32 127)
  %398 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %399 = load i32, i32* @PEFE_PITCHAMOUNT, align 4
  %400 = load i32, i32* %19, align 4
  %401 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %398, i32 %399, i32 %400, i32 0)
  %402 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %8, align 8
  %403 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %402, i32 0, i32 2
  %404 = load i64, i64* %24, align 8
  %405 = call i32 @spin_unlock_irqrestore(i32* %403, i64 %404)
  ret void
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @emu10k1_ccis(i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_compose_audigy_fxrt1(i8*) #1

declare dso_local i32 @snd_emu10k1_compose_audigy_fxrt2(i8*) #1

declare dso_local i32 @snd_emu10k1_compose_send_routing(i8*) #1

declare dso_local i32 @emu10k1_calc_pitch_target(i32) #1

declare dso_local i32 @emu10k1_select_interprom(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
