; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/xilinx/extr_xlnx_formatter_pcm.c_xlnx_formatter_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.xlnx_pcm_stream_param* }
%struct.xlnx_pcm_stream_param = type { i32, i64, i64, i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_component = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@AES_TO_PCM = common dso_local global i64 0, align 8
@XLNX_AUD_STS = common dso_local global i64 0, align 8
@AUD_STS_CH_STS_MASK = common dso_local global i32 0, align 4
@XLNX_AUD_CH_STS_START = common dso_local global i64 0, align 8
@XLNX_AUD_BUFF_ADDR_LSB = common dso_local global i64 0, align 8
@XLNX_AUD_BUFF_ADDR_MSB = common dso_local global i64 0, align 8
@XLNX_AUD_CTRL = common dso_local global i64 0, align 8
@BIT_DEPTH_8 = common dso_local global i32 0, align 4
@AUD_CTRL_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@BIT_DEPTH_16 = common dso_local global i32 0, align 4
@BIT_DEPTH_20 = common dso_local global i32 0, align 4
@BIT_DEPTH_24 = common dso_local global i32 0, align 4
@BIT_DEPTH_32 = common dso_local global i32 0, align 4
@AUD_CTRL_ACTIVE_CH_SHIFT = common dso_local global i32 0, align 4
@PERIOD_CFG_PERIODS_SHIFT = common dso_local global i32 0, align 4
@XLNX_AUD_PERIOD_CONFIG = common dso_local global i64 0, align 8
@XLNX_BYTES_PER_CH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @xlnx_formatter_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlnx_formatter_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %17 = alloca %struct.snd_soc_component*, align 8
  %18 = alloca %struct.snd_pcm_runtime*, align 8
  %19 = alloca %struct.xlnx_pcm_stream_param*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 3
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %21, align 8
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %16, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  %24 = load i32, i32* @DRV_NAME, align 4
  %25 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %23, i32 %24)
  store %struct.snd_soc_component* %25, %struct.snd_soc_component** %17, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 2
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %18, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %30, align 8
  store %struct.xlnx_pcm_stream_param* %31, %struct.xlnx_pcm_stream_param** %19, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_channels(%struct.snd_pcm_hw_params* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %36 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %204

42:                                               ; preds = %2
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %42
  %49 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %50 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AES_TO_PCM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %48
  %55 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %56 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XLNX_AUD_STS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @AUD_STS_CH_STS_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %54
  %66 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %67 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XLNX_AUD_CH_STS_START, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %73 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XLNX_AUD_CH_STS_START, align 8
  %76 = add nsw i64 %74, %75
  %77 = add nsw i64 %76, 4
  %78 = call i32 @readl(i64 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @xlnx_parse_aes_params(i32 %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %65, %54
  br label %86

86:                                               ; preds = %85, %48, %42
  %87 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %88 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %87)
  store i32 %88, i32* %15, align 4
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %3, align 4
  br label %204

96:                                               ; preds = %86
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %99 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @lower_32_bits(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @upper_32_bits(i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %112 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @XLNX_AUD_BUFF_ADDR_LSB, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %119 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @XLNX_AUD_BUFF_ADDR_MSB, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %125 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @XLNX_AUD_CTRL, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readl(i64 %128)
  store i32 %129, i32* %9, align 4
  %130 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %131 = call i32 @params_width(%struct.snd_pcm_hw_params* %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  switch i32 %132, label %163 [
    i32 8, label %133
    i32 16, label %139
    i32 20, label %145
    i32 24, label %151
    i32 32, label %157
  ]

133:                                              ; preds = %96
  %134 = load i32, i32* @BIT_DEPTH_8, align 4
  %135 = load i32, i32* @AUD_CTRL_DATA_WIDTH_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %166

139:                                              ; preds = %96
  %140 = load i32, i32* @BIT_DEPTH_16, align 4
  %141 = load i32, i32* @AUD_CTRL_DATA_WIDTH_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %166

145:                                              ; preds = %96
  %146 = load i32, i32* @BIT_DEPTH_20, align 4
  %147 = load i32, i32* @AUD_CTRL_DATA_WIDTH_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %166

151:                                              ; preds = %96
  %152 = load i32, i32* @BIT_DEPTH_24, align 4
  %153 = load i32, i32* @AUD_CTRL_DATA_WIDTH_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %166

157:                                              ; preds = %96
  %158 = load i32, i32* @BIT_DEPTH_32, align 4
  %159 = load i32, i32* @AUD_CTRL_DATA_WIDTH_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %166

163:                                              ; preds = %96
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %204

166:                                              ; preds = %157, %151, %145, %139, %133
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @AUD_CTRL_ACTIVE_CH_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %174 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @XLNX_AUD_CTRL, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i32 %172, i64 %177)
  %179 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %180 = call i32 @params_periods(%struct.snd_pcm_hw_params* %179)
  %181 = load i32, i32* @PERIOD_CFG_PERIODS_SHIFT, align 4
  %182 = shl i32 %180, %181
  %183 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %184 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %183)
  %185 = or i32 %182, %184
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %188 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @XLNX_AUD_PERIOD_CONFIG, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 %186, i64 %191)
  %193 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %194 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %193)
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @DIV_ROUND_UP(i32 %194, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.xlnx_pcm_stream_param*, %struct.xlnx_pcm_stream_param** %19, align 8
  %199 = getelementptr inbounds %struct.xlnx_pcm_stream_param, %struct.xlnx_pcm_stream_param* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @XLNX_BYTES_PER_CH, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @writel(i32 %197, i64 %202)
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %166, %163, %94, %39
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @xlnx_parse_aes_params(i32, i32, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
