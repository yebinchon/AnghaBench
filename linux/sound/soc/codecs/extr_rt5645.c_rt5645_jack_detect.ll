; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rt5645_priv = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@RT5645_CHARGE_PUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Mic Det Power\00", align 1
@RT5645_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5645_PWR_MB = common dso_local global i32 0, align 4
@RT5645_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5645_PWR_MIXER = common dso_local global i32 0, align 4
@RT5645_PWR_LDO2 = common dso_local global i32 0, align 4
@RT5645_PWR_VOL = common dso_local global i32 0, align 4
@RT5645_PWR_MIC_DET = common dso_local global i32 0, align 4
@RT5645_JD_CTRL3 = common dso_local global i32 0, align 4
@RT5645_IN1_CTRL2 = common dso_local global i32 0, align 4
@RT5645_CBJ_MN_JD = common dso_local global i32 0, align 4
@RT5645_IN1_CTRL1 = common dso_local global i32 0, align 4
@RT5645_CBJ_BST1_EN = common dso_local global i32 0, align 4
@RT5645_IN1_CTRL3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"val = %d\0A\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@RT5645_IRQ_CTRL2 = common dso_local global i32 0, align 4
@RT5645_JD_1_1_MASK = common dso_local global i32 0, align 4
@RT5645_JD_1_1_NOR = common dso_local global i32 0, align 4
@RT5645_HP_VOL = common dso_local global i32 0, align 4
@RT5645_L_MUTE = common dso_local global i32 0, align 4
@RT5645_R_MUTE = common dso_local global i32 0, align 4
@RT5645_JD_1_1_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5645_jack_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_jack_detect(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_context*, align 8
  %6 = alloca %struct.rt5645_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %5, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.rt5645_priv* %11, %struct.rt5645_priv** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %138

14:                                               ; preds = %2
  %15 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %16 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RT5645_CHARGE_PUMP, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 3590)
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %21 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %23 = call i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %25 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %24)
  %26 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %14
  %33 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %34 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RT5645_PWR_ANLG1, align 4
  %37 = load i32, i32* @RT5645_PWR_MB, align 4
  %38 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RT5645_PWR_MB, align 4
  %41 = load i32, i32* @RT5645_PWR_VREF2, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %45 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RT5645_PWR_MIXER, align 4
  %48 = load i32, i32* @RT5645_PWR_LDO2, align 4
  %49 = load i32, i32* @RT5645_PWR_LDO2, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %52 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RT5645_PWR_VOL, align 4
  %55 = load i32, i32* @RT5645_PWR_MIC_DET, align 4
  %56 = load i32, i32* @RT5645_PWR_MIC_DET, align 4
  %57 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %32, %14
  %59 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %60 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RT5645_JD_CTRL3, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 240)
  %64 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %65 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RT5645_IN1_CTRL2, align 4
  %68 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %69 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %70 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %72 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RT5645_IN1_CTRL1, align 4
  %75 = load i32, i32* @RT5645_CBJ_BST1_EN, align 4
  %76 = load i32, i32* @RT5645_CBJ_BST1_EN, align 4
  %77 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = call i32 @msleep(i32 100)
  %79 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %80 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RT5645_IN1_CTRL2, align 4
  %83 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %84 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 0)
  %85 = call i32 @msleep(i32 600)
  %86 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %87 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RT5645_IN1_CTRL3, align 4
  %90 = call i32 @regmap_read(i32 %88, i32 %89, i32* %7)
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 7
  store i32 %92, i32* %7, align 4
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %58
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %115

103:                                              ; preds = %100, %58
  %104 = load i32, i32* @SND_JACK_HEADSET, align 4
  %105 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %106 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %108 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %113 = call i32 @rt5645_enable_push_button_irq(%struct.snd_soc_component* %112, i32 1)
  br label %114

114:                                              ; preds = %111, %103
  br label %123

115:                                              ; preds = %100
  %116 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %117 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %119 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %118)
  %120 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  %121 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %122 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %115, %114
  %124 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %125 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %131 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RT5645_IRQ_CTRL2, align 4
  %134 = load i32, i32* @RT5645_JD_1_1_MASK, align 4
  %135 = load i32, i32* @RT5645_JD_1_1_NOR, align 4
  %136 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %129, %123
  br label %200

138:                                              ; preds = %2
  %139 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %140 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %142 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RT5645_HP_VOL, align 4
  %145 = load i32, i32* @RT5645_L_MUTE, align 4
  %146 = load i32, i32* @RT5645_R_MUTE, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @RT5645_L_MUTE, align 4
  %149 = load i32, i32* @RT5645_R_MUTE, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @regmap_update_bits(i32 %143, i32 %144, i32 %147, i32 %150)
  %152 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %153 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @RT5645_IN1_CTRL2, align 4
  %156 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %157 = load i32, i32* @RT5645_CBJ_MN_JD, align 4
  %158 = call i32 @regmap_update_bits(i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %160 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @RT5645_IN1_CTRL1, align 4
  %163 = load i32, i32* @RT5645_CBJ_BST1_EN, align 4
  %164 = call i32 @regmap_update_bits(i32 %161, i32 %162, i32 %163, i32 0)
  %165 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %166 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %138
  %170 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %171 = call i32 @rt5645_enable_push_button_irq(%struct.snd_soc_component* %170, i32 0)
  br label %172

172:                                              ; preds = %169, %138
  %173 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %174 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %180 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %172
  %182 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %183 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %5, align 8
  %185 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %184)
  %186 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %187 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %181
  %192 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %193 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RT5645_IRQ_CTRL2, align 4
  %196 = load i32, i32* @RT5645_JD_1_1_MASK, align 4
  %197 = load i32, i32* @RT5645_JD_1_1_INV, align 4
  %198 = call i32 @regmap_update_bits(i32 %194, i32 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %191, %181
  br label %200

200:                                              ; preds = %199, %137
  %201 = load %struct.rt5645_priv*, %struct.rt5645_priv** %6, align 8
  %202 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  ret i32 %203
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_force_enable_pin(%struct.snd_soc_dapm_context*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rt5645_enable_push_button_irq(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_dapm_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
