; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8955_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.wm8955_pdata = type { i64, i64 }

@wm8955_supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to request supplies: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to issue reset: %d\0A\00", align 1
@WM8955_LEFT_DAC_VOLUME = common dso_local global i32 0, align 4
@WM8955_LDVU = common dso_local global i32 0, align 4
@WM8955_RIGHT_DAC_VOLUME = common dso_local global i32 0, align 4
@WM8955_RDVU = common dso_local global i32 0, align 4
@WM8955_LOUT1_VOLUME = common dso_local global i32 0, align 4
@WM8955_LO1VU = common dso_local global i32 0, align 4
@WM8955_LO1ZC = common dso_local global i32 0, align 4
@WM8955_ROUT1_VOLUME = common dso_local global i32 0, align 4
@WM8955_RO1VU = common dso_local global i32 0, align 4
@WM8955_RO1ZC = common dso_local global i32 0, align 4
@WM8955_LOUT2_VOLUME = common dso_local global i32 0, align 4
@WM8955_LO2VU = common dso_local global i32 0, align 4
@WM8955_LO2ZC = common dso_local global i32 0, align 4
@WM8955_ROUT2_VOLUME = common dso_local global i32 0, align 4
@WM8955_RO2VU = common dso_local global i32 0, align 4
@WM8955_RO2ZC = common dso_local global i32 0, align 4
@WM8955_MONOOUT_VOLUME = common dso_local global i32 0, align 4
@WM8955_MOZC = common dso_local global i32 0, align 4
@WM8955_BASS_CONTROL = common dso_local global i32 0, align 4
@WM8955_BB = common dso_local global i32 0, align 4
@WM8955_ADDITIONAL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8955_ROUT2INV = common dso_local global i32 0, align 4
@WM8955_MONO_OUT_MIX_1 = common dso_local global i32 0, align 4
@WM8955_DMEN = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @wm8955_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.wm8955_priv*, align 8
  %5 = alloca %struct.wm8955_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm8955_priv* %9, %struct.wm8955_priv** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wm8955_pdata* @dev_get_platdata(i32 %12)
  store %struct.wm8955_pdata* %13, %struct.wm8955_pdata** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %34, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %17 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load i32*, i32** @wm8955_supply_names, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %28 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %42 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %43)
  %45 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %46 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @devm_regulator_bulk_get(i32 %40, i32 %44, %struct.TYPE_5__* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %191

58:                                               ; preds = %37
  %59 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %60 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %61)
  %63 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %64 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @regulator_bulk_enable(i32 %62, %struct.TYPE_5__* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %191

76:                                               ; preds = %58
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %78 = call i32 @wm8955_reset(%struct.snd_soc_component* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %181

87:                                               ; preds = %76
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %89 = load i32, i32* @WM8955_LEFT_DAC_VOLUME, align 4
  %90 = load i32, i32* @WM8955_LDVU, align 4
  %91 = load i32, i32* @WM8955_LDVU, align 4
  %92 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %94 = load i32, i32* @WM8955_RIGHT_DAC_VOLUME, align 4
  %95 = load i32, i32* @WM8955_RDVU, align 4
  %96 = load i32, i32* @WM8955_RDVU, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %99 = load i32, i32* @WM8955_LOUT1_VOLUME, align 4
  %100 = load i32, i32* @WM8955_LO1VU, align 4
  %101 = load i32, i32* @WM8955_LO1ZC, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @WM8955_LO1VU, align 4
  %104 = load i32, i32* @WM8955_LO1ZC, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %108 = load i32, i32* @WM8955_ROUT1_VOLUME, align 4
  %109 = load i32, i32* @WM8955_RO1VU, align 4
  %110 = load i32, i32* @WM8955_RO1ZC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @WM8955_RO1VU, align 4
  %113 = load i32, i32* @WM8955_RO1ZC, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %111, i32 %114)
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %117 = load i32, i32* @WM8955_LOUT2_VOLUME, align 4
  %118 = load i32, i32* @WM8955_LO2VU, align 4
  %119 = load i32, i32* @WM8955_LO2ZC, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @WM8955_LO2VU, align 4
  %122 = load i32, i32* @WM8955_LO2ZC, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %120, i32 %123)
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %126 = load i32, i32* @WM8955_ROUT2_VOLUME, align 4
  %127 = load i32, i32* @WM8955_RO2VU, align 4
  %128 = load i32, i32* @WM8955_RO2ZC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @WM8955_RO2VU, align 4
  %131 = load i32, i32* @WM8955_RO2ZC, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %125, i32 %126, i32 %129, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = load i32, i32* @WM8955_MONOOUT_VOLUME, align 4
  %136 = load i32, i32* @WM8955_MOZC, align 4
  %137 = load i32, i32* @WM8955_MOZC, align 4
  %138 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %140 = load i32, i32* @WM8955_BASS_CONTROL, align 4
  %141 = load i32, i32* @WM8955_BB, align 4
  %142 = load i32, i32* @WM8955_BB, align 4
  %143 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %139, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.wm8955_pdata*, %struct.wm8955_pdata** %5, align 8
  %145 = icmp ne %struct.wm8955_pdata* %144, null
  br i1 %145, label %146, label %169

146:                                              ; preds = %87
  %147 = load %struct.wm8955_pdata*, %struct.wm8955_pdata** %5, align 8
  %148 = getelementptr inbounds %struct.wm8955_pdata, %struct.wm8955_pdata* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %153 = load i32, i32* @WM8955_ADDITIONAL_CONTROL_2, align 4
  %154 = load i32, i32* @WM8955_ROUT2INV, align 4
  %155 = load i32, i32* @WM8955_ROUT2INV, align 4
  %156 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %146
  %158 = load %struct.wm8955_pdata*, %struct.wm8955_pdata** %5, align 8
  %159 = getelementptr inbounds %struct.wm8955_pdata, %struct.wm8955_pdata* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %164 = load i32, i32* @WM8955_MONO_OUT_MIX_1, align 4
  %165 = load i32, i32* @WM8955_DMEN, align 4
  %166 = load i32, i32* @WM8955_DMEN, align 4
  %167 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %157
  br label %169

169:                                              ; preds = %168, %87
  %170 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %171 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %172 = call i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component* %170, i32 %171)
  %173 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %174 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %175)
  %177 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %178 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = call i32 @regulator_bulk_disable(i32 %176, %struct.TYPE_5__* %179)
  store i32 0, i32* %2, align 4
  br label %191

181:                                              ; preds = %81
  %182 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %183 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %182, i32 0, i32 0
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %184)
  %186 = load %struct.wm8955_priv*, %struct.wm8955_priv** %4, align 8
  %187 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %186, i32 0, i32 0
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = call i32 @regulator_bulk_disable(i32 %185, %struct.TYPE_5__* %188)
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %181, %169, %69, %51
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.wm8955_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @wm8955_reset(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_force_bias_level(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
