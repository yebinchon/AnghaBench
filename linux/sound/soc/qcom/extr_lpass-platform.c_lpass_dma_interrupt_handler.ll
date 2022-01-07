; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_dma_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_dma_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.lpass_data = type { i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@LPAIF_IRQ_PORT_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error writing to irqclear reg: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"xrun warning\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bus access error\0A\00", align 1
@SNDRV_PCM_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.lpass_data*, i32, i32)* @lpass_dma_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_dma_interrupt_handler(%struct.snd_pcm_substream* %0, %struct.lpass_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.lpass_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %11 = alloca %struct.lpass_variant*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.lpass_data* %1, %struct.lpass_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %10, align 8
  %17 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %18 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %17, i32 0, i32 1
  %19 = load %struct.lpass_variant*, %struct.lpass_variant** %18, align 8
  store %struct.lpass_variant* %19, %struct.lpass_variant** %11, align 8
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @LPAIF_IRQ_PER(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %4
  %27 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %28 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %31 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %32 = call i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @LPAIF_IRQ_PER(i32 %33)
  %35 = call i32 @regmap_write(i32 %29, i32 %32, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %40 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @IRQ_NONE, align 4
  store i32 %44, i32* %5, align 4
  br label %118

45:                                               ; preds = %26
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %47 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %45, %4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @LPAIF_IRQ_XRUN(i32 %51)
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %57 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %60 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %61 = call i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @LPAIF_IRQ_XRUN(i32 %62)
  %64 = call i32 @regmap_write(i32 %58, i32 %61, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %69 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @IRQ_NONE, align 4
  store i32 %73, i32* %5, align 4
  br label %118

74:                                               ; preds = %55
  %75 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %76 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %80 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %74, %49
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @LPAIF_IRQ_ERR(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %82
  %89 = load %struct.lpass_data*, %struct.lpass_data** %7, align 8
  %90 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %93 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %94 = call i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant* %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @LPAIF_IRQ_ERR(i32 %95)
  %97 = call i32 @regmap_write(i32 %91, i32 %94, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %88
  %101 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %102 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @IRQ_NONE, align 4
  store i32 %106, i32* %5, align 4
  br label %118

107:                                              ; preds = %88
  %108 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  %109 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %113 = load i32, i32* @SNDRV_PCM_STATE_DISCONNECTED, align 4
  %114 = call i32 @snd_pcm_stop(%struct.snd_pcm_substream* %112, i32 %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %107, %82
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %100, %67, %38
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @LPAIF_IRQ_PER(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @LPAIF_IRQ_XRUN(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @LPAIF_IRQ_ERR(i32) #1

declare dso_local i32 @snd_pcm_stop(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
