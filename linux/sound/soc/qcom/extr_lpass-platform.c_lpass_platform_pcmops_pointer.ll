; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_pcmops_pointer.c"
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
@.str = private unnamed_addr constant [37 x i8] c"error reading from rdmabase reg: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"error reading from rdmacurr reg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lpass_platform_pcmops_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_pcmops_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.lpass_data*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.lpass_pcm_data*, align 8
  %9 = alloca %struct.lpass_variant*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 2
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %19 = load i32, i32* @DRV_NAME, align 4
  %20 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %18, i32 %19)
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %5, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %22 = call %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.lpass_data* %22, %struct.lpass_data** %6, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %24, align 8
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %7, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %27, align 8
  store %struct.lpass_pcm_data* %28, %struct.lpass_pcm_data** %8, align 8
  %29 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %30 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %29, i32 0, i32 1
  %31 = load %struct.lpass_variant*, %struct.lpass_variant** %30, align 8
  store %struct.lpass_variant* %31, %struct.lpass_variant** %9, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  %35 = load %struct.lpass_pcm_data*, %struct.lpass_pcm_data** %8, align 8
  %36 = getelementptr inbounds %struct.lpass_pcm_data, %struct.lpass_pcm_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %39 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lpass_variant*, %struct.lpass_variant** %9, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @LPAIF_DMABASE_REG(%struct.lpass_variant* %41, i32 %42, i32 %43)
  %45 = call i32 @regmap_read(i32 %40, i32 %44, i32* %10)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %1
  %49 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %2, align 4
  br label %81

55:                                               ; preds = %1
  %56 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %57 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lpass_variant*, %struct.lpass_variant** %9, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @LPAIF_DMACURR_REG(%struct.lpass_variant* %59, i32 %60, i32 %61)
  %63 = call i32 @regmap_read(i32 %58, i32 %62, i32* %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %2, align 4
  br label %81

73:                                               ; preds = %55
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %74, i32 0, i32 1
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub i32 %77, %78
  %80 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %76, i32 %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %66, %48
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.lpass_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @LPAIF_DMABASE_REG(%struct.lpass_variant*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @LPAIF_DMACURR_REG(%struct.lpass_variant*, i32, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
