; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.da7218_priv = type { i64, i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DA7218_PC_COUNT = common dso_local global i32 0, align 4
@DA7218_PC_FREERUN_MASK = common dso_local global i32 0, align 4
@DA7218_DROUTING_OUTFILT_1L = common dso_local global i32 0, align 4
@DA7218_DROUTING_OUTFILT_1R = common dso_local global i32 0, align 4
@DA7218_CP_CTRL = common dso_local global i32 0, align 4
@DA7218_CP_SMALL_SWITCH_FREQ_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIXIN_1_CTRL = common dso_local global i32 0, align 4
@DA7218_MIXIN_1_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_MIXIN_2_CTRL = common dso_local global i32 0, align 4
@DA7218_MIXIN_2_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1L_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_1L_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_1R_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_1R_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2L_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_2L_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_IN_2R_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_IN_2R_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_DGS_GAIN_CTRL = common dso_local global i32 0, align 4
@DA7218_DGS_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_OUT_1L_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_OUT_1L_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_OUT_1R_FILTER_CTRL = common dso_local global i32 0, align 4
@DA7218_OUT_1R_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_HP_L_CTRL = common dso_local global i32 0, align 4
@DA7218_HP_L_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_HP_R_CTRL = common dso_local global i32 0, align 4
@DA7218_HP_R_AMP_RAMP_EN_MASK = common dso_local global i32 0, align 4
@DA7218_TONE_GEN_CYCLES = common dso_local global i32 0, align 4
@DA7218_BEEP_CYCLES_MASK = common dso_local global i32 0, align 4
@DA7217_DEV_ID = common dso_local global i64 0, align 8
@DA7218_HP_DIFF_CTRL = common dso_local global i32 0, align 4
@DA7218_HP_AMP_DIFF_MODE_EN_MASK = common dso_local global i32 0, align 4
@DA7218_EVENT_MASK = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_EVENT_IRQ_MSK_MASK = common dso_local global i32 0, align 4
@da7218_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"da7218\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@DA7218_NUM_SUPPLIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @da7218_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.da7218_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.da7218_priv* %7, %struct.da7218_priv** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call i32 @da7218_handle_supplies(%struct.snd_soc_component* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %191

14:                                               ; preds = %1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %23 = call i32 @da7218_of_to_pdata(%struct.snd_soc_component* %22)
  %24 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %25 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  br label %33

26:                                               ; preds = %14
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @dev_get_platdata(%struct.TYPE_5__* %29)
  %31 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %32 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = call i32 @da7218_handle_pdata(%struct.snd_soc_component* %34)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32* @devm_clk_get(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %41 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %43 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @IS_ERR(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %33
  %48 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %49 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %57 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %5, align 4
  br label %184

60:                                               ; preds = %47
  %61 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %62 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %66 = load i32, i32* @DA7218_PC_COUNT, align 4
  %67 = load i32, i32* @DA7218_PC_FREERUN_MASK, align 4
  %68 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %65, i32 %66, i32 %67)
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %70 = load i32, i32* @DA7218_DROUTING_OUTFILT_1L, align 4
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %69, i32 %70, i32 0)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %73 = load i32, i32* @DA7218_DROUTING_OUTFILT_1R, align 4
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 0)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %76 = load i32, i32* @DA7218_CP_CTRL, align 4
  %77 = load i32, i32* @DA7218_CP_SMALL_SWITCH_FREQ_EN_MASK, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %80 = load i32, i32* @DA7218_MIXIN_1_CTRL, align 4
  %81 = load i32, i32* @DA7218_MIXIN_1_AMP_RAMP_EN_MASK, align 4
  %82 = load i32, i32* @DA7218_MIXIN_1_AMP_RAMP_EN_MASK, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %85 = load i32, i32* @DA7218_MIXIN_2_CTRL, align 4
  %86 = load i32, i32* @DA7218_MIXIN_2_AMP_RAMP_EN_MASK, align 4
  %87 = load i32, i32* @DA7218_MIXIN_2_AMP_RAMP_EN_MASK, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %90 = load i32, i32* @DA7218_IN_1L_FILTER_CTRL, align 4
  %91 = load i32, i32* @DA7218_IN_1L_RAMP_EN_MASK, align 4
  %92 = load i32, i32* @DA7218_IN_1L_RAMP_EN_MASK, align 4
  %93 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %95 = load i32, i32* @DA7218_IN_1R_FILTER_CTRL, align 4
  %96 = load i32, i32* @DA7218_IN_1R_RAMP_EN_MASK, align 4
  %97 = load i32, i32* @DA7218_IN_1R_RAMP_EN_MASK, align 4
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %100 = load i32, i32* @DA7218_IN_2L_FILTER_CTRL, align 4
  %101 = load i32, i32* @DA7218_IN_2L_RAMP_EN_MASK, align 4
  %102 = load i32, i32* @DA7218_IN_2L_RAMP_EN_MASK, align 4
  %103 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %105 = load i32, i32* @DA7218_IN_2R_FILTER_CTRL, align 4
  %106 = load i32, i32* @DA7218_IN_2R_RAMP_EN_MASK, align 4
  %107 = load i32, i32* @DA7218_IN_2R_RAMP_EN_MASK, align 4
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %110 = load i32, i32* @DA7218_DGS_GAIN_CTRL, align 4
  %111 = load i32, i32* @DA7218_DGS_RAMP_EN_MASK, align 4
  %112 = load i32, i32* @DA7218_DGS_RAMP_EN_MASK, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %109, i32 %110, i32 %111, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %115 = load i32, i32* @DA7218_OUT_1L_FILTER_CTRL, align 4
  %116 = load i32, i32* @DA7218_OUT_1L_RAMP_EN_MASK, align 4
  %117 = load i32, i32* @DA7218_OUT_1L_RAMP_EN_MASK, align 4
  %118 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %120 = load i32, i32* @DA7218_OUT_1R_FILTER_CTRL, align 4
  %121 = load i32, i32* @DA7218_OUT_1R_RAMP_EN_MASK, align 4
  %122 = load i32, i32* @DA7218_OUT_1R_RAMP_EN_MASK, align 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %125 = load i32, i32* @DA7218_HP_L_CTRL, align 4
  %126 = load i32, i32* @DA7218_HP_L_AMP_RAMP_EN_MASK, align 4
  %127 = load i32, i32* @DA7218_HP_L_AMP_RAMP_EN_MASK, align 4
  %128 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %124, i32 %125, i32 %126, i32 %127)
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %130 = load i32, i32* @DA7218_HP_R_CTRL, align 4
  %131 = load i32, i32* @DA7218_HP_R_AMP_RAMP_EN_MASK, align 4
  %132 = load i32, i32* @DA7218_HP_R_AMP_RAMP_EN_MASK, align 4
  %133 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %135 = load i32, i32* @DA7218_TONE_GEN_CYCLES, align 4
  %136 = load i32, i32* @DA7218_BEEP_CYCLES_MASK, align 4
  %137 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %134, i32 %135, i32 %136)
  %138 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %139 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DA7217_DEV_ID, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %64
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %145 = load i32, i32* @DA7218_HP_DIFF_CTRL, align 4
  %146 = load i32, i32* @DA7218_HP_AMP_DIFF_MODE_EN_MASK, align 4
  %147 = load i32, i32* @DA7218_HP_AMP_DIFF_MODE_EN_MASK, align 4
  %148 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %150 = load i32, i32* @DA7218_EVENT_MASK, align 4
  %151 = load i32, i32* @DA7218_HPLDET_JACK_EVENT_IRQ_MSK_MASK, align 4
  %152 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %143, %64
  %154 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %155 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %153
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %160 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %163 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @da7218_irq_thread, align 4
  %166 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %167 = load i32, i32* @IRQF_ONESHOT, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %170 = call i32 @devm_request_threaded_irq(%struct.TYPE_5__* %161, i64 %164, i32* null, i32 %165, i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.snd_soc_component* %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %158
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %175 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %178 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @dev_err(%struct.TYPE_5__* %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %179, i32 %180)
  br label %184

182:                                              ; preds = %158
  br label %183

183:                                              ; preds = %182, %153
  store i32 0, i32* %2, align 4
  br label %191

184:                                              ; preds = %173, %55
  %185 = load i32, i32* @DA7218_NUM_SUPPLIES, align 4
  %186 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %187 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @regulator_bulk_disable(i32 %185, i32 %188)
  %190 = load i32, i32* %5, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %184, %183, %12
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @da7218_handle_supplies(%struct.snd_soc_component*) #1

declare dso_local i32 @da7218_of_to_pdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local i32 @da7218_handle_pdata(%struct.snd_soc_component*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_5__*, i64, i32*, i32, i32, i8*, %struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i64, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
