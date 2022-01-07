; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt286.c_rt286_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt286_priv = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT286_GET_HP_SENSE = common dso_local global i32 0, align 4
@RT286_DC_GAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VREF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@RT286_SET_MIC1 = common dso_local global i32 0, align 4
@RT286_CBJ_CTRL1 = common dso_local global i32 0, align 4
@RT286_CBJ_CTRL2 = common dso_local global i32 0, align 4
@RT286_GET_MIC1_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt286_priv*, i32*, i32*)* @rt286_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt286_jack_detect(%struct.rt286_priv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt286_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt286_priv* %0, %struct.rt286_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %153

20:                                               ; preds = %3
  %21 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32 %23)
  store %struct.snd_soc_dapm_context* %24, %struct.snd_soc_dapm_context** %8, align 8
  %25 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %20
  %31 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RT286_GET_HP_SENSE, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %10)
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, -2147483648
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %104

42:                                               ; preds = %30
  %43 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RT286_DC_GAIN, align 4
  %47 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 512, i32 512)
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %49 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %51 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %53 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %55 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %54)
  %56 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %57 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RT286_SET_MIC1, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 36)
  %61 = call i32 @msleep(i32 50)
  %62 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %63 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RT286_CBJ_CTRL1, align 4
  %66 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 64704, i32 54272)
  %67 = call i32 @msleep(i32 300)
  %68 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @RT286_CBJ_CTRL2, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %9)
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 112
  %75 = icmp eq i32 112, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %42
  %77 = load i32*, i32** %7, align 8
  store i32 1, i32* %77, align 4
  br label %98

78:                                               ; preds = %42
  %79 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %80 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RT286_CBJ_CTRL1, align 4
  %83 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 64704, i32 58368)
  %84 = call i32 @msleep(i32 300)
  %85 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %86 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @RT286_CBJ_CTRL2, align 4
  %89 = call i32 @regmap_read(i32 %87, i32 %88, i32* %9)
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 112
  %92 = icmp eq i32 112, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32*, i32** %7, align 8
  store i32 1, i32* %94, align 4
  br label %97

95:                                               ; preds = %78
  %96 = load i32*, i32** %7, align 8
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %100 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RT286_DC_GAIN, align 4
  %103 = call i32 @regmap_update_bits(i32 %101, i32 %102, i32 512, i32 0)
  br label %116

104:                                              ; preds = %30
  %105 = load i32*, i32** %7, align 8
  store i32 0, i32* %105, align 4
  %106 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %107 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RT286_SET_MIC1, align 4
  %110 = call i32 @regmap_write(i32 %108, i32 %109, i32 32)
  %111 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %112 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RT286_CBJ_CTRL1, align 4
  %115 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 1024, i32 0)
  br label %116

116:                                              ; preds = %104, %98
  br label %134

117:                                              ; preds = %20
  %118 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %119 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RT286_GET_HP_SENSE, align 4
  %122 = call i32 @regmap_read(i32 %120, i32 %121, i32* %10)
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, -2147483648
  %125 = load i32*, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.rt286_priv*, %struct.rt286_priv** %5, align 8
  %127 = getelementptr inbounds %struct.rt286_priv, %struct.rt286_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @RT286_GET_MIC1_SENSE, align 4
  %130 = call i32 @regmap_read(i32 %128, i32 %129, i32* %10)
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, -2147483648
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %117, %116
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %140 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %142 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %134
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %149 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %143
  %151 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %152 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %151)
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %150, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
