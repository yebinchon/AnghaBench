; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_constraints_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_constraints_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.snd_pcm_substream }
%struct.snd_pcm_hardware = type { i32, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, %struct.snd_pcm_runtime* }

@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_COMPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_COMPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_ACCESS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SUBFORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBFORMAT_STD = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_buffer_bytes_max = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_constraints_complete(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 12
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 1
  %13 = bitcast %struct.snd_pcm_substream* %12 to %struct.snd_pcm_hardware*
  store %struct.snd_pcm_hardware* %13, %struct.snd_pcm_hardware** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SNDRV_PCM_INFO_NONINTERLEAVED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = call i64 @hw_support_mmap(%struct.snd_pcm_substream* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_INTERLEAVED, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SNDRV_PCM_INFO_NONINTERLEAVED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_NONINTERLEAVED, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SNDRV_PCM_INFO_COMPLEX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_COMPLEX, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %65
  br label %78

78:                                               ; preds = %77, %37
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %80 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @snd_pcm_hw_constraint_mask(%struct.snd_pcm_runtime* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %232

87:                                               ; preds = %78
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %89 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %90 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime* %88, i32 %89, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %232

98:                                               ; preds = %87
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %100 = load i32, i32* @SNDRV_PCM_HW_PARAM_SUBFORMAT, align 4
  %101 = load i32, i32* @SNDRV_PCM_SUBFORMAT_STD, align 4
  %102 = shl i32 1, %101
  %103 = call i32 @snd_pcm_hw_constraint_mask(%struct.snd_pcm_runtime* %99, i32 %100, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %232

108:                                              ; preds = %98
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %110 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %111 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %109, i32 %110, i32 %113, i64 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %232

122:                                              ; preds = %108
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %124 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %125 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %123, i32 %124, i32 %127, i64 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %232

136:                                              ; preds = %122
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %138 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %139 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %143 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %137, i32 %138, i32 %141, i64 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %232

150:                                              ; preds = %136
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %152 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %153 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %154 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %157 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %151, i32 %152, i32 %155, i64 %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %232

164:                                              ; preds = %150
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %166 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %167 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %165, i32 %166, i32 %169, i64 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %164
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %232

178:                                              ; preds = %164
  %179 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %180 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %181 = load i32, i32* @snd_pcm_hw_rule_buffer_bytes_max, align 4
  %182 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %183 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %184 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %179, i32 0, i32 %180, i32 %181, %struct.snd_pcm_substream* %182, i32 %183, i32 -1)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %178
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  br label %232

189:                                              ; preds = %178
  %190 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %191 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %189
  %195 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %196 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %197 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %198 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %195, i32 %196, i32 0, i64 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %2, align 4
  br label %232

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %189
  %207 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %208 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %211 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %209, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %228, label %215

215:                                              ; preds = %206
  %216 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %217 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %218 = load i32, i32* @snd_pcm_hw_rule_rate, align 4
  %219 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %220 = bitcast %struct.snd_pcm_hardware* %219 to %struct.snd_pcm_substream*
  %221 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %222 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %216, i32 0, i32 %217, i32 %218, %struct.snd_pcm_substream* %220, i32 %221, i32 -1)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %215
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %2, align 4
  br label %232

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %206
  %229 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %230 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %231 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %229, i32 %230)
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %228, %225, %203, %187, %176, %162, %148, %134, %120, %106, %96, %85
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i64 @hw_support_mmap(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_mask(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
