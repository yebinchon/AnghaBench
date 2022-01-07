; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_constraints_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_constraints_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_pcm_hw_constraints }
%struct.snd_pcm_hw_constraints = type { i32 }

@SNDRV_PCM_HW_PARAM_FIRST_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FIRST_INTERVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_INTERVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FRAME_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_format = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_sample_bits = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_div = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_mul = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_mulkdiv = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_TIME = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_muldivk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_constraints_init(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hw_constraints*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  store %struct.snd_pcm_hw_constraints* %12, %struct.snd_pcm_hw_constraints** %5, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_MASK, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %23, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_MASK, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @constrs_mask(%struct.snd_pcm_hw_constraints* %19, i32 %20)
  %22 = call i32 @snd_mask_any(i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_INTERVAL, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %37, %26
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_INTERVAL, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %33, i32 %34)
  %36 = call i32 @snd_interval_any(i32 %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %43 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %41, i32 %42)
  %44 = call i32 @snd_interval_setinteger(i32 %43)
  %45 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %47 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %45, i32 %46)
  %48 = call i32 @snd_interval_setinteger(i32 %47)
  %49 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %51 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %49, i32 %50)
  %52 = call i32 @snd_interval_setinteger(i32 %51)
  %53 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %54 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %55 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %53, i32 %54)
  %56 = call i32 @snd_interval_setinteger(i32 %55)
  %57 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %5, align 8
  %58 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %59 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %57, i32 %58)
  %60 = call i32 @snd_interval_setinteger(i32 %59)
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %62 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %63 = load i32, i32* @snd_pcm_hw_rule_format, align 4
  %64 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %65 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %61, i32 0, i32 %62, i32 %63, i8* null, i32 %64, i32 -1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %40
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %280

70:                                               ; preds = %40
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %72 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %73 = load i32, i32* @snd_pcm_hw_rule_sample_bits, align 4
  %74 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %76 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %71, i32 0, i32 %72, i32 %73, i8* null, i32 %74, i32 %75, i32 -1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %280

81:                                               ; preds = %70
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %83 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %84 = load i32, i32* @snd_pcm_hw_rule_div, align 4
  %85 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %86 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %87 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %82, i32 0, i32 %83, i32 %84, i8* null, i32 %85, i32 %86, i32 -1)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %280

92:                                               ; preds = %81
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %94 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %95 = load i32, i32* @snd_pcm_hw_rule_mul, align 4
  %96 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %97 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %98 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %93, i32 0, i32 %94, i32 %95, i8* null, i32 %96, i32 %97, i32 -1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %280

103:                                              ; preds = %92
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %105 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %106 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %107 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %108 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %109 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %104, i32 0, i32 %105, i32 %106, i8* inttoptr (i64 8 to i8*), i32 %107, i32 %108, i32 -1)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %280

114:                                              ; preds = %103
  %115 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %116 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %117 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %118 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %119 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %120 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %115, i32 0, i32 %116, i32 %117, i8* inttoptr (i64 8 to i8*), i32 %118, i32 %119, i32 -1)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %280

125:                                              ; preds = %114
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %127 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %128 = load i32, i32* @snd_pcm_hw_rule_div, align 4
  %129 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %130 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %131 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %126, i32 0, i32 %127, i32 %128, i8* null, i32 %129, i32 %130, i32 -1)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %280

136:                                              ; preds = %125
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %138 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %139 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %140 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %141 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %142 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %137, i32 0, i32 %138, i32 %139, i8* inttoptr (i64 1000000 to i8*), i32 %140, i32 %141, i32 -1)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %280

147:                                              ; preds = %136
  %148 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %149 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %150 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %151 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %152 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_TIME, align 4
  %153 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %148, i32 0, i32 %149, i32 %150, i8* inttoptr (i64 1000000 to i8*), i32 %151, i32 %152, i32 -1)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %280

158:                                              ; preds = %147
  %159 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %160 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %161 = load i32, i32* @snd_pcm_hw_rule_div, align 4
  %162 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %163 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %164 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %159, i32 0, i32 %160, i32 %161, i8* null, i32 %162, i32 %163, i32 -1)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %280

169:                                              ; preds = %158
  %170 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %171 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %172 = load i32, i32* @snd_pcm_hw_rule_div, align 4
  %173 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %174 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %175 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %170, i32 0, i32 %171, i32 %172, i8* null, i32 %173, i32 %174, i32 -1)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %280

180:                                              ; preds = %169
  %181 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %182 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %183 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %184 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %185 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %186 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %181, i32 0, i32 %182, i32 %183, i8* inttoptr (i64 8 to i8*), i32 %184, i32 %185, i32 -1)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %280

191:                                              ; preds = %180
  %192 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %193 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %194 = load i32, i32* @snd_pcm_hw_rule_muldivk, align 4
  %195 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %196 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %197 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %192, i32 0, i32 %193, i32 %194, i8* inttoptr (i64 1000000 to i8*), i32 %195, i32 %196, i32 -1)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %2, align 4
  br label %280

202:                                              ; preds = %191
  %203 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %204 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %205 = load i32, i32* @snd_pcm_hw_rule_mul, align 4
  %206 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %207 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %208 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %203, i32 0, i32 %204, i32 %205, i8* null, i32 %206, i32 %207, i32 -1)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %2, align 4
  br label %280

213:                                              ; preds = %202
  %214 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %215 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %216 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %217 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %218 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %219 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %214, i32 0, i32 %215, i32 %216, i8* inttoptr (i64 8 to i8*), i32 %217, i32 %218, i32 -1)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %213
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %2, align 4
  br label %280

224:                                              ; preds = %213
  %225 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %226 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %227 = load i32, i32* @snd_pcm_hw_rule_muldivk, align 4
  %228 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_TIME, align 4
  %229 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %230 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %225, i32 0, i32 %226, i32 %227, i8* inttoptr (i64 1000000 to i8*), i32 %228, i32 %229, i32 -1)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %224
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %280

235:                                              ; preds = %224
  %236 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %237 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %238 = load i32, i32* @snd_pcm_hw_rule_muldivk, align 4
  %239 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %240 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %241 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %236, i32 0, i32 %237, i32 %238, i8* inttoptr (i64 8 to i8*), i32 %239, i32 %240, i32 -1)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %2, align 4
  br label %280

246:                                              ; preds = %235
  %247 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %248 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %249 = load i32, i32* @snd_pcm_hw_rule_muldivk, align 4
  %250 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %251 = load i32, i32* @SNDRV_PCM_HW_PARAM_FRAME_BITS, align 4
  %252 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %247, i32 0, i32 %248, i32 %249, i8* inttoptr (i64 8 to i8*), i32 %250, i32 %251, i32 -1)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %246
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %2, align 4
  br label %280

257:                                              ; preds = %246
  %258 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %259 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %260 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %261 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %262 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %263 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %258, i32 0, i32 %259, i32 %260, i8* inttoptr (i64 1000000 to i8*), i32 %261, i32 %262, i32 -1)
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %257
  %267 = load i32, i32* %7, align 4
  store i32 %267, i32* %2, align 4
  br label %280

268:                                              ; preds = %257
  %269 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %270 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_TIME, align 4
  %271 = load i32, i32* @snd_pcm_hw_rule_mulkdiv, align 4
  %272 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %273 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %274 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %269, i32 0, i32 %270, i32 %271, i8* inttoptr (i64 1000000 to i8*), i32 %272, i32 %273, i32 -1)
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %268
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %2, align 4
  br label %280

279:                                              ; preds = %268
  store i32 0, i32* %2, align 4
  br label %280

280:                                              ; preds = %279, %277, %266, %255, %244, %233, %222, %211, %200, %189, %178, %167, %156, %145, %134, %123, %112, %101, %90, %79, %68
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @snd_mask_any(i32) #1

declare dso_local i32 @constrs_mask(%struct.snd_pcm_hw_constraints*, i32) #1

declare dso_local i32 @snd_interval_any(i32) #1

declare dso_local i32 @constrs_interval(%struct.snd_pcm_hw_constraints*, i32) #1

declare dso_local i32 @snd_interval_setinteger(i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
