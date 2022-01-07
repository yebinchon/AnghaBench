; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt298.c_rt298_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt298_priv = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_dapm_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT298_GET_HP_SENSE = common dso_local global i32 0, align 4
@RT298_DC_GAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VREF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@RT298_POWER_CTRL1 = common dso_local global i32 0, align 4
@RT298_POWER_CTRL2 = common dso_local global i32 0, align 4
@RT298_SET_MIC1 = common dso_local global i32 0, align 4
@RT298_CBJ_CTRL1 = common dso_local global i32 0, align 4
@RT298_CBJ_CTRL2 = common dso_local global i32 0, align 4
@RT298_GET_MIC1_SENSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"*hp = %d *mic = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt298_priv*, i32*, i32*)* @rt298_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt298_jack_detect(%struct.rt298_priv* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt298_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt298_priv* %0, %struct.rt298_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %180

20:                                               ; preds = %3
  %21 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32 %23)
  store %struct.snd_soc_dapm_context* %24, %struct.snd_soc_dapm_context** %8, align 8
  %25 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %139

30:                                               ; preds = %20
  %31 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RT298_GET_HP_SENSE, align 4
  %35 = call i32 @regmap_read(i32 %33, i32 %34, i32* %10)
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, -2147483648
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %42 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %180

46:                                               ; preds = %30
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %50 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %126

54:                                               ; preds = %46
  %55 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %56 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RT298_DC_GAIN, align 4
  %59 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 512, i32 512)
  %60 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %61 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %63 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %65 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %67 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %66)
  %68 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RT298_POWER_CTRL1, align 4
  %72 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 4097, i32 0)
  %73 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %74 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RT298_POWER_CTRL2, align 4
  %77 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 4, i32 4)
  %78 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %79 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @RT298_SET_MIC1, align 4
  %82 = call i32 @regmap_write(i32 %80, i32 %81, i32 36)
  %83 = call i32 @msleep(i32 50)
  %84 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %85 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RT298_CBJ_CTRL1, align 4
  %88 = call i32 @regmap_update_bits(i32 %86, i32 %87, i32 64704, i32 54272)
  %89 = call i32 @msleep(i32 300)
  %90 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %91 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RT298_CBJ_CTRL2, align 4
  %94 = call i32 @regmap_read(i32 %92, i32 %93, i32* %9)
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 112
  %97 = icmp eq i32 112, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %54
  %99 = load i32*, i32** %7, align 8
  store i32 1, i32* %99, align 4
  br label %120

100:                                              ; preds = %54
  %101 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %102 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RT298_CBJ_CTRL1, align 4
  %105 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 64704, i32 58368)
  %106 = call i32 @msleep(i32 300)
  %107 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %108 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RT298_CBJ_CTRL2, align 4
  %111 = call i32 @regmap_read(i32 %109, i32 %110, i32* %9)
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 112
  %114 = icmp eq i32 112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %100
  %116 = load i32*, i32** %7, align 8
  store i32 1, i32* %116, align 4
  br label %119

117:                                              ; preds = %100
  %118 = load i32*, i32** %7, align 8
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %98
  %121 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %122 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RT298_DC_GAIN, align 4
  %125 = call i32 @regmap_update_bits(i32 %123, i32 %124, i32 512, i32 0)
  br label %138

126:                                              ; preds = %46
  %127 = load i32*, i32** %7, align 8
  store i32 0, i32* %127, align 4
  %128 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %129 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RT298_SET_MIC1, align 4
  %132 = call i32 @regmap_write(i32 %130, i32 %131, i32 32)
  %133 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %134 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RT298_CBJ_CTRL1, align 4
  %137 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 1024, i32 0)
  br label %138

138:                                              ; preds = %126, %120
  br label %156

139:                                              ; preds = %20
  %140 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %141 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @RT298_GET_HP_SENSE, align 4
  %144 = call i32 @regmap_read(i32 %142, i32 %143, i32* %10)
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, -2147483648
  %147 = load i32*, i32** %6, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.rt298_priv*, %struct.rt298_priv** %5, align 8
  %149 = getelementptr inbounds %struct.rt298_priv, %struct.rt298_priv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RT298_GET_MIC1_SENSE, align 4
  %152 = call i32 @regmap_read(i32 %150, i32 %151, i32* %10)
  %153 = load i32, i32* %10, align 4
  %154 = and i32 %153, -2147483648
  %155 = load i32*, i32** %7, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %139, %138
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  %161 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %162 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %163 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %164 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %156
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %171 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %165
  %173 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %174 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %173)
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %176, i32 %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %172, %45, %17
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
