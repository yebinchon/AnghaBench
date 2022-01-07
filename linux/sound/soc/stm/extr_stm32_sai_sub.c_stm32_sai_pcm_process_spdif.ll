; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_pcm_process_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_pcm_process_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i64 }
%struct.stm32_sai_sub_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SAI_IEC60958_BLOCK_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @stm32_sai_pcm_process_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_pcm_process_spdif(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %13 = alloca %struct.snd_soc_dai*, align 8
  %14 = alloca %struct.stm32_sai_sub_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 1
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %11, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %24, align 8
  store %struct.snd_soc_pcm_runtime* %25, %struct.snd_soc_pcm_runtime** %12, align 8
  %26 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  %27 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  store %struct.snd_soc_dai* %28, %struct.snd_soc_dai** %13, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %13, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.stm32_sai_sub_data* @dev_get_drvdata(i32 %31)
  store %struct.stm32_sai_sub_data* %32, %struct.stm32_sai_sub_data** %14, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %41, %44
  %46 = mul nsw i32 %38, %45
  %47 = sext i32 %46 to i64
  %48 = add i64 %37, %47
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %15, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @bytes_to_samples(%struct.snd_pcm_runtime* %50, i64 %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %14, align 8
  %54 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %99, %5
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 16777215
  %61 = load i32*, i32** %15, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %17, align 4
  %63 = lshr i32 %62, 3
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = shl i32 %65, 3
  %67 = sub i32 %64, %66
  %68 = shl i32 1, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %14, align 8
  %70 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %19, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %56
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 67108864
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %80, %56
  %85 = load i32*, i32** %15, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %15, align 8
  %87 = load i32, i32* %16, align 4
  %88 = srem i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %17, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @SAI_IEC60958_BLOCK_FRAMES, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %17, align 4
  br label %98

98:                                               ; preds = %97, %93
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %56, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %14, align 8
  %106 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  ret i32 0
}

declare dso_local %struct.stm32_sai_sub_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @bytes_to_samples(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
