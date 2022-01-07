; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sunxi/extr_sun4i-i2s.c_sun4i_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sun4i_i2s = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.sun4i_i2s*, %struct.snd_pcm_hw_params*)*, i32 (%struct.sun4i_i2s*, i32)*, i32 (%struct.sun4i_i2s*, i32)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Invalid channel configuration\0A\00", align 1
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unsupported physical sample width: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @sun4i_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.sun4i_i2s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.sun4i_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %17)
  store %struct.sun4i_i2s* %18, %struct.sun4i_i2s** %8, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_width(%struct.snd_pcm_hw_params* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_channels(%struct.snd_pcm_hw_params* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %27 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %32 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %36 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %41 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %45 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.sun4i_i2s*, %struct.snd_pcm_hw_params*)*, i32 (%struct.sun4i_i2s*, %struct.snd_pcm_hw_params*)** %47, align 8
  %49 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = call i32 %48(%struct.sun4i_i2s* %49, %struct.snd_pcm_hw_params* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %4, align 4
  br label %123

60:                                               ; preds = %43
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %62 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %61)
  switch i32 %62, label %65 [
    i32 16, label %63
  ]

63:                                               ; preds = %60
  %64 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %64, i32* %16, align 4
  br label %74

65:                                               ; preds = %60
  %66 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %67 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %70 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %69)
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %123

74:                                               ; preds = %63
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %77 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %80 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32 (%struct.sun4i_i2s*, i32)*, i32 (%struct.sun4i_i2s*, i32)** %82, align 8
  %84 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 %83(%struct.sun4i_i2s* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %123

92:                                               ; preds = %74
  %93 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %94 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %93, i32 0, i32 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32 (%struct.sun4i_i2s*, i32)*, i32 (%struct.sun4i_i2s*, i32)** %96, align 8
  %98 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 %97(%struct.sun4i_i2s* %98, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %123

106:                                              ; preds = %92
  %107 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %108 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @regmap_field_write(i32 %109, i32 %110)
  %112 = load %struct.sun4i_i2s*, %struct.sun4i_i2s** %8, align 8
  %113 = getelementptr inbounds %struct.sun4i_i2s, %struct.sun4i_i2s* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @regmap_field_write(i32 %114, i32 %115)
  %117 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %118 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %119 = call i32 @params_rate(%struct.snd_pcm_hw_params* %118)
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @sun4i_i2s_set_clk_rate(%struct.snd_soc_dai* %117, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %106, %103, %89, %65, %54
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.sun4i_i2s* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @sun4i_i2s_set_clk_rate(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
