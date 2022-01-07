; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_seq_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_seq_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Starting DC servo for %x\0A\00", align 1
@WM8996_DCS_TRIG_STARTUP_0_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Applying RMV_SHORTs %x->%x\0A\00", align 1
@HPOUT1L = common dso_local global i32 0, align 4
@WM8996_HPOUT1L_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_HPOUT1L_OUTP = common dso_local global i32 0, align 4
@WM8996_HPOUT1L_DLY = common dso_local global i32 0, align 4
@HPOUT1R = common dso_local global i32 0, align 4
@WM8996_HPOUT1R_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_HPOUT1R_OUTP = common dso_local global i32 0, align 4
@WM8996_HPOUT1R_DLY = common dso_local global i32 0, align 4
@WM8996_ANALOGUE_HP_1 = common dso_local global i32 0, align 4
@HPOUT2L = common dso_local global i32 0, align 4
@WM8996_HPOUT2L_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_HPOUT2L_OUTP = common dso_local global i32 0, align 4
@WM8996_HPOUT2L_DLY = common dso_local global i32 0, align 4
@HPOUT2R = common dso_local global i32 0, align 4
@WM8996_HPOUT2R_RMV_SHORT = common dso_local global i32 0, align 4
@WM8996_HPOUT2R_OUTP = common dso_local global i32 0, align 4
@WM8996_HPOUT2R_DLY = common dso_local global i32 0, align 4
@WM8996_ANALOGUE_HP_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @wm8996_seq_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8996_seq_notifier(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm8996_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8996_priv* %11, %struct.wm8996_priv** %7, align 8
  %12 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %13 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %21 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %25 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %26 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WM8996_DCS_TRIG_STARTUP_0_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @wait_for_dc_servo(%struct.snd_soc_component* %24, i32 %29)
  %31 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %32 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %16, %3
  %34 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %35 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %38 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %171

41:                                               ; preds = %33
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %46 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %49 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %52 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %53 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HPOUT1L, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %41
  %59 = load i32, i32* @WM8996_HPOUT1L_RMV_SHORT, align 4
  %60 = load i32, i32* @WM8996_HPOUT1L_OUTP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @WM8996_HPOUT1L_RMV_SHORT, align 4
  %65 = load i32, i32* @WM8996_HPOUT1L_OUTP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %77

69:                                               ; preds = %41
  %70 = load i32, i32* @WM8996_HPOUT1L_RMV_SHORT, align 4
  %71 = load i32, i32* @WM8996_HPOUT1L_OUTP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WM8996_HPOUT1L_DLY, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %58
  %78 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %79 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HPOUT1R, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %86 = load i32, i32* @WM8996_HPOUT1R_OUTP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %91 = load i32, i32* @WM8996_HPOUT1R_OUTP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %103

95:                                               ; preds = %77
  %96 = load i32, i32* @WM8996_HPOUT1R_RMV_SHORT, align 4
  %97 = load i32, i32* @WM8996_HPOUT1R_OUTP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @WM8996_HPOUT1R_DLY, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %95, %84
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %105 = load i32, i32* @WM8996_ANALOGUE_HP_1, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %106, i32 %107)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %109 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %110 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HPOUT2L, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %103
  %116 = load i32, i32* @WM8996_HPOUT2L_RMV_SHORT, align 4
  %117 = load i32, i32* @WM8996_HPOUT2L_OUTP, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @WM8996_HPOUT2L_RMV_SHORT, align 4
  %122 = load i32, i32* @WM8996_HPOUT2L_OUTP, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %134

126:                                              ; preds = %103
  %127 = load i32, i32* @WM8996_HPOUT2L_RMV_SHORT, align 4
  %128 = load i32, i32* @WM8996_HPOUT2L_OUTP, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @WM8996_HPOUT2L_DLY, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %9, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %126, %115
  %135 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %136 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HPOUT2R, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %134
  %142 = load i32, i32* @WM8996_HPOUT2R_RMV_SHORT, align 4
  %143 = load i32, i32* @WM8996_HPOUT2R_OUTP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @WM8996_HPOUT2R_RMV_SHORT, align 4
  %148 = load i32, i32* @WM8996_HPOUT2R_OUTP, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %9, align 4
  br label %160

152:                                              ; preds = %134
  %153 = load i32, i32* @WM8996_HPOUT2R_RMV_SHORT, align 4
  %154 = load i32, i32* @WM8996_HPOUT2R_OUTP, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @WM8996_HPOUT2R_DLY, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %152, %141
  %161 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %162 = load i32, i32* @WM8996_ANALOGUE_HP_2, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %161, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %167 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.wm8996_priv*, %struct.wm8996_priv** %7, align 8
  %170 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %160, %33
  ret void
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @wait_for_dc_servo(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
