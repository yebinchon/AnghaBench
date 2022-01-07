; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4270.c_cs4270_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs4270.c_cs4270_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs4270_private = type { i32, i32, i64 }

@NUM_MCLK_RATIOS = common dso_local global i32 0, align 4
@cs4270_mode_ratios = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"could not find matching ratio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS4270_MODE = common dso_local global i32 0, align 4
@CS4270_MODE_SPEED_MASK = common dso_local global i32 0, align 4
@CS4270_MODE_DIV_MASK = common dso_local global i32 0, align 4
@CS4270_MODE_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"i2c write failed\0A\00", align 1
@CS4270_FORMAT = common dso_local global i32 0, align 4
@CS4270_FORMAT_DAC_MASK = common dso_local global i32 0, align 4
@CS4270_FORMAT_ADC_MASK = common dso_local global i32 0, align 4
@CS4270_FORMAT_DAC_I2S = common dso_local global i32 0, align 4
@CS4270_FORMAT_ADC_I2S = common dso_local global i32 0, align 4
@CS4270_FORMAT_DAC_LJ = common dso_local global i32 0, align 4
@CS4270_FORMAT_ADC_LJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown dai format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs4270_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs4270_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.cs4270_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.cs4270_private* %19, %struct.cs4270_private** %9, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.cs4270_private*, %struct.cs4270_private** %9, align 8
  %23 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %42, %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @NUM_MCLK_RATIOS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4270_mode_ratios, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %27

45:                                               ; preds = %40, %27
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @NUM_MCLK_RATIOS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %151

56:                                               ; preds = %45
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %58 = load i32, i32* @CS4270_MODE, align 4
  %59 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* @CS4270_MODE_SPEED_MASK, align 4
  %61 = load i32, i32* @CS4270_MODE_DIV_MASK, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %14, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4270_mode_ratios, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load %struct.cs4270_private*, %struct.cs4270_private** %9, align 8
  %75 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %56
  %79 = load i32, i32* @CS4270_MODE_SLAVE, align 4
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %91

82:                                               ; preds = %56
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cs4270_mode_ratios, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %82, %78
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %93 = load i32, i32* @CS4270_MODE, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %92, i32 %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %100 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %151

104:                                              ; preds = %91
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %106 = load i32, i32* @CS4270_FORMAT, align 4
  %107 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* @CS4270_FORMAT_DAC_MASK, align 4
  %109 = load i32, i32* @CS4270_FORMAT_ADC_MASK, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %14, align 4
  %114 = load %struct.cs4270_private*, %struct.cs4270_private** %9, align 8
  %115 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %129 [
    i32 129, label %117
    i32 128, label %123
  ]

117:                                              ; preds = %104
  %118 = load i32, i32* @CS4270_FORMAT_DAC_I2S, align 4
  %119 = load i32, i32* @CS4270_FORMAT_ADC_I2S, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  br label %136

123:                                              ; preds = %104
  %124 = load i32, i32* @CS4270_FORMAT_DAC_LJ, align 4
  %125 = load i32, i32* @CS4270_FORMAT_ADC_LJ, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %14, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %14, align 4
  br label %136

129:                                              ; preds = %104
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %131 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %151

136:                                              ; preds = %123, %117
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %138 = load i32, i32* @CS4270_FORMAT, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %137, i32 %138, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %145 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %151

149:                                              ; preds = %136
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %143, %129, %98, %49
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.cs4270_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
