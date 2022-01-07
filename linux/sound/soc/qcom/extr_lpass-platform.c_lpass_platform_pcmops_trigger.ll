; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.lpass_pcm_data* }
%struct.lpass_pcm_data = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.lpass_data = type { i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@DRV_NAME = common dso_local global i32 0, align 4
@LPAIF_IRQ_PORT_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error writing to irqclear reg: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error writing to irqen reg: %d\0A\00", align 1
@LPAIF_DMACTL_ENABLE_MASK = common dso_local global i32 0, align 4
@LPAIF_DMACTL_ENABLE_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error writing to rdmactl reg: %d\0A\00", align 1
@LPAIF_DMACTL_ENABLE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @lpass_platform_pcmops_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_pcmops_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.lpass_data*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca %struct.lpass_pcm_data*, align 8
  %11 = alloca %struct.lpass_variant*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 2
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = load i32, i32* @DRV_NAME, align 4
  %20 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %18, i32 %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %7, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %22 = call %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.lpass_data* %22, %struct.lpass_data** %8, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %24, align 8
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %9, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %27, align 8
  store %struct.lpass_pcm_data* %28, %struct.lpass_pcm_data** %10, align 8
  %29 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %30 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %29, i32 0, i32 1
  %31 = load %struct.lpass_variant*, %struct.lpass_variant** %30, align 8
  store %struct.lpass_variant* %31, %struct.lpass_variant** %11, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %10, align 8
  %36 = getelementptr inbounds %struct.lpass_pcm_data, %struct.lpass_pcm_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %140 [
    i32 130, label %39
    i32 131, label %39
    i32 132, label %39
    i32 129, label %100
    i32 128, label %100
    i32 133, label %100
  ]

39:                                               ; preds = %2, %2, %2
  %40 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %41 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %44 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %45 = call i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant* %43, i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @LPAIF_IRQ_ALL(i32 %46)
  %48 = call i32 @regmap_write(i32 %42, i32 %45, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %53 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %3, align 4
  br label %141

58:                                               ; preds = %39
  %59 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %60 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %63 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %64 = call i32 @LPAIF_IRQEN_REG(%struct.lpass_variant* %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @LPAIF_IRQ_ALL(i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @LPAIF_IRQ_ALL(i32 %67)
  %69 = call i32 @regmap_update_bits(i32 %61, i32 %64, i32 %66, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %74 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %3, align 4
  br label %141

79:                                               ; preds = %58
  %80 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %81 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @LPAIF_DMACTL_REG(%struct.lpass_variant* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @LPAIF_DMACTL_ENABLE_MASK, align 4
  %88 = load i32, i32* @LPAIF_DMACTL_ENABLE_ON, align 4
  %89 = call i32 @regmap_update_bits(i32 %82, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %94 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %141

99:                                               ; preds = %79
  br label %140

100:                                              ; preds = %2, %2, %2
  %101 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %102 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @LPAIF_DMACTL_REG(%struct.lpass_variant* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @LPAIF_DMACTL_ENABLE_MASK, align 4
  %109 = load i32, i32* @LPAIF_DMACTL_ENABLE_OFF, align 4
  %110 = call i32 @regmap_update_bits(i32 %103, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %100
  %114 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %115 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %3, align 4
  br label %141

120:                                              ; preds = %100
  %121 = load %struct.lpass_data*, %struct.lpass_data** %8, align 8
  %122 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.lpass_variant*, %struct.lpass_variant** %11, align 8
  %125 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %126 = call i32 @LPAIF_IRQEN_REG(%struct.lpass_variant* %124, i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @LPAIF_IRQ_ALL(i32 %127)
  %129 = call i32 @regmap_update_bits(i32 %123, i32 %126, i32 %128, i32 0)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %120
  %133 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %134 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %3, align 4
  br label %141

139:                                              ; preds = %120
  br label %140

140:                                              ; preds = %2, %139, %99
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %132, %113, %92, %72, %51
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @LPAIF_IRQCLEAR_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_IRQ_ALL(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @LPAIF_IRQEN_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @LPAIF_DMACTL_REG(%struct.lpass_variant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
