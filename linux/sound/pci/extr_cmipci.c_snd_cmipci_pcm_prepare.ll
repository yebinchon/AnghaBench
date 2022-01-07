; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.cmipci_pcm = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cannot set dac channels\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CM_REG_CH1_FRAME1 = common dso_local global i32 0, align 4
@CM_REG_CH0_FRAME1 = common dso_local global i32 0, align 4
@CM_REG_CH1_FRAME2 = common dso_local global i32 0, align 4
@CM_REG_CH0_FRAME2 = common dso_local global i32 0, align 4
@CM_CHADC1 = common dso_local global i32 0, align 4
@CM_CHADC0 = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@CM_CH0_SRATE_88K = common dso_local global i32 0, align 4
@CM_CH0_SRATE_96K = common dso_local global i32 0, align 4
@CM_CH0_SRATE_128K = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_DSFC_MASK = common dso_local global i32 0, align 4
@CM_DSFC_SHIFT = common dso_local global i32 0, align 4
@CM_ASFC_MASK = common dso_local global i32 0, align 4
@CM_ASFC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"functrl1 = %08x\0A\00", align 1
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_CH1FMT_MASK = common dso_local global i32 0, align 4
@CM_CH1FMT_SHIFT = common dso_local global i32 0, align 4
@CM_CH0FMT_MASK = common dso_local global i32 0, align 4
@CM_CH0FMT_SHIFT = common dso_local global i32 0, align 4
@CM_CH0_SRATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"chformat = %08x\0A\00", align 1
@CM_REG_EXT_MISC = common dso_local global i32 0, align 4
@CM_ADC48K44K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, %struct.cmipci_pcm*, %struct.snd_pcm_substream*)* @snd_cmipci_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_pcm_prepare(%struct.cmipci* %0, %struct.cmipci_pcm* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.cmipci_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.cmipci* %0, %struct.cmipci** %5, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %13, align 8
  %17 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snd_pcm_format_width(i32 %23)
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, 2
  store i32 %30, i32* %28, align 8
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_pcm_format_width(i32 %33)
  %35 = icmp sgt i32 %34, 16
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %49 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %54 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %59 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @set_dac_channels(%struct.cmipci* %58, %struct.cmipci_pcm* %59, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %67 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %357

74:                                               ; preds = %57, %52
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %79 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %84 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %88 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %93 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %91, %94
  store i32 %95, i32* %12, align 4
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 2
  br i1 %99, label %100, label %117

100:                                              ; preds = %74
  %101 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %102 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = sdiv i32 %107, 2
  %109 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %110 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 %111, %114
  %116 = udiv i32 %115, 2
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %100, %74
  %118 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %119 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %118, i32 0, i32 1
  %120 = call i32 @spin_lock_irq(i32* %119)
  %121 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %122 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @CM_REG_CH1_FRAME1, align 4
  br label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @CM_REG_CH0_FRAME1, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %8, align 4
  %131 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %134 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @snd_cmipci_write(%struct.cmipci* %131, i32 %132, i32 %135)
  %137 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %138 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* @CM_REG_CH1_FRAME2, align 4
  br label %145

143:                                              ; preds = %129
  %144 = load i32, i32* @CM_REG_CH0_FRAME2, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %8, align 4
  %147 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %150 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = call i32 @snd_cmipci_write_w(%struct.cmipci* %147, i32 %148, i32 %152)
  %154 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add i32 %155, 2
  %157 = load i32, i32* %12, align 4
  %158 = sub i32 %157, 1
  %159 = call i32 @snd_cmipci_write_w(%struct.cmipci* %154, i32 %156, i32 %158)
  %160 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %161 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %145
  %165 = load i32, i32* @CM_CHADC1, align 4
  br label %168

166:                                              ; preds = %145
  %167 = load i32, i32* @CM_CHADC0, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  store i32 %169, i32* %11, align 4
  %170 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %171 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %178 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %187

181:                                              ; preds = %168
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %184 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %181, %174
  %188 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %189 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %190 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %191 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @snd_cmipci_write(%struct.cmipci* %188, i32 %189, i32 %192)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %194 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %195 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 48000
  br i1 %197, label %198, label %211

198:                                              ; preds = %187
  %199 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %200 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  switch i32 %201, label %208 [
    i32 88200, label %202
    i32 96000, label %204
    i32 128000, label %206
  ]

202:                                              ; preds = %198
  %203 = load i32, i32* @CM_CH0_SRATE_88K, align 4
  store i32 %203, i32* %10, align 4
  br label %210

204:                                              ; preds = %198
  %205 = load i32, i32* @CM_CH0_SRATE_96K, align 4
  store i32 %205, i32* %10, align 4
  br label %210

206:                                              ; preds = %198
  %207 = load i32, i32* @CM_CH0_SRATE_128K, align 4
  store i32 %207, i32* %10, align 4
  br label %210

208:                                              ; preds = %198
  %209 = call i32 (...) @snd_BUG()
  br label %210

210:                                              ; preds = %208, %206, %204, %202
  br label %216

211:                                              ; preds = %187
  %212 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %213 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @snd_cmipci_rate_freq(i32 %214)
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %211, %210
  %217 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %218 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %219 = call i32 @snd_cmipci_read(%struct.cmipci* %217, i32 %218)
  store i32 %219, i32* %11, align 4
  %220 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %221 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %216
  %225 = load i32, i32* @CM_DSFC_MASK, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* %11, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* @CM_DSFC_SHIFT, align 4
  %231 = shl i32 %229, %230
  %232 = load i32, i32* @CM_DSFC_MASK, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* %11, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %11, align 4
  br label %248

236:                                              ; preds = %216
  %237 = load i32, i32* @CM_ASFC_MASK, align 4
  %238 = xor i32 %237, -1
  %239 = load i32, i32* %11, align 4
  %240 = and i32 %239, %238
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @CM_ASFC_SHIFT, align 4
  %243 = shl i32 %241, %242
  %244 = load i32, i32* @CM_ASFC_MASK, align 4
  %245 = and i32 %243, %244
  %246 = load i32, i32* %11, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %11, align 4
  br label %248

248:                                              ; preds = %236, %224
  %249 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %250 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @snd_cmipci_write(%struct.cmipci* %249, i32 %250, i32 %251)
  %253 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %254 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %253, i32 0, i32 3
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %11, align 4
  %259 = call i32 (i32, i8*, ...) @dev_dbg(i32 %257, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %258)
  %260 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %261 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %262 = call i32 @snd_cmipci_read(%struct.cmipci* %260, i32 %261)
  store i32 %262, i32* %11, align 4
  %263 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %264 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %248
  %268 = load i32, i32* @CM_CH1FMT_MASK, align 4
  %269 = xor i32 %268, -1
  %270 = load i32, i32* %11, align 4
  %271 = and i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %273 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @CM_CH1FMT_SHIFT, align 4
  %276 = shl i32 %274, %275
  %277 = load i32, i32* %11, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %11, align 4
  br label %291

279:                                              ; preds = %248
  %280 = load i32, i32* @CM_CH0FMT_MASK, align 4
  %281 = xor i32 %280, -1
  %282 = load i32, i32* %11, align 4
  %283 = and i32 %282, %281
  store i32 %283, i32* %11, align 4
  %284 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %285 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @CM_CH0FMT_SHIFT, align 4
  %288 = shl i32 %286, %287
  %289 = load i32, i32* %11, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %11, align 4
  br label %291

291:                                              ; preds = %279, %267
  %292 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %293 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %314

296:                                              ; preds = %291
  %297 = load i32, i32* @CM_CH0_SRATE_MASK, align 4
  %298 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %299 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = mul nsw i32 %300, 2
  %302 = shl i32 %297, %301
  %303 = xor i32 %302, -1
  %304 = load i32, i32* %11, align 4
  %305 = and i32 %304, %303
  store i32 %305, i32* %11, align 4
  %306 = load i32, i32* %10, align 4
  %307 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %308 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = mul nsw i32 %309, 2
  %311 = shl i32 %306, %310
  %312 = load i32, i32* %11, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %11, align 4
  br label %314

314:                                              ; preds = %296, %291
  %315 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %316 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %317 = load i32, i32* %11, align 4
  %318 = call i32 @snd_cmipci_write(%struct.cmipci* %315, i32 %316, i32 %317)
  %319 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %320 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %319, i32 0, i32 3
  %321 = load %struct.TYPE_2__*, %struct.TYPE_2__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %11, align 4
  %325 = call i32 (i32, i8*, ...) @dev_dbg(i32 %323, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %324)
  %326 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %327 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %351, label %330

330:                                              ; preds = %314
  %331 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %332 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %351

335:                                              ; preds = %330
  %336 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  %337 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 4
  %339 = icmp sgt i32 %338, 44100
  br i1 %339, label %340, label %345

340:                                              ; preds = %335
  %341 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %342 = load i32, i32* @CM_REG_EXT_MISC, align 4
  %343 = load i32, i32* @CM_ADC48K44K, align 4
  %344 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %341, i32 %342, i32 %343)
  br label %350

345:                                              ; preds = %335
  %346 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %347 = load i32, i32* @CM_REG_EXT_MISC, align 4
  %348 = load i32, i32* @CM_ADC48K44K, align 4
  %349 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %346, i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %345, %340
  br label %351

351:                                              ; preds = %350, %330, %314
  %352 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %6, align 8
  %353 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %352, i32 0, i32 5
  store i64 0, i64* %353, align 8
  %354 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %355 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %354, i32 0, i32 1
  %356 = call i32 @spin_unlock_irq(i32* %355)
  store i32 0, i32* %4, align 4
  br label %357

357:                                              ; preds = %351, %65
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @set_dac_channels(%struct.cmipci*, %struct.cmipci_pcm*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_write_w(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_cmipci_rate_freq(i32) #1

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i32) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
