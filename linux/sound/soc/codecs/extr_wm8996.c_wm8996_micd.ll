; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_micd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_micd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32, i32, i32, i32, i32 (%struct.snd_soc_component.0*, i32)* }
%struct.snd_soc_component.0 = type opaque

@WM8996_MIC_DETECT_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Microphone event: %x\0A\00", align 1
@WM8996_MICD_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Microphone detection state invalid\0A\00", align 1
@WM8996_MICD_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Jack removal detected\0A\00", align 1
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@WM8996_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8996_MICD_RATE_MASK = common dso_local global i32 0, align 4
@WM8996_MICD_BIAS_STARTTIME_MASK = common dso_local global i32 0, align 4
@WM8996_MICD_BIAS_STARTTIME_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Microphone detected\0A\00", align 1
@WM8996_MICD_RATE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Mic button up\0A\00", align 1
@WM8996_ACCESSORY_DETECT_MODE_2 = common dso_local global i32 0, align 4
@WM8996_HPOUT1FB_SRC = common dso_local global i32 0, align 4
@WM8996_MICD_SRC = common dso_local global i32 0, align 4
@WM8996_MICD_BIAS_SRC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Set microphone polarity to %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Mic button detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8996_micd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8996_micd(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8996_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.wm8996_priv* %7, %struct.wm8996_priv** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = load i32, i32* @WM8996_MIC_DETECT_3, align 4
  %10 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @WM8996_MICD_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %197

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @WM8996_MICD_STS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %25
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %36 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %38 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %40 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %42 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %45 = load i32, i32* @SND_JACK_HEADSET, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SND_JACK_BTN_0, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @snd_soc_jack_report(i32 %43, i32 0, i32 %48)
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %51 = load i32, i32* @WM8996_MIC_DETECT_1, align 4
  %52 = load i32, i32* @WM8996_MICD_RATE_MASK, align 4
  %53 = load i32, i32* @WM8996_MICD_BIAS_STARTTIME_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WM8996_MICD_RATE_MASK, align 4
  %56 = load i32, i32* @WM8996_MICD_BIAS_STARTTIME_SHIFT, align 4
  %57 = shl i32 9, %56
  %58 = or i32 %55, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %54, i32 %58)
  br label %197

60:                                               ; preds = %25
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 1024
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %60
  %65 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %66 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %75 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = call i32 @wm8996_hpdet_start(%struct.snd_soc_component* %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %79 = load i32, i32* @WM8996_MIC_DETECT_1, align 4
  %80 = load i32, i32* @WM8996_MICD_RATE_MASK, align 4
  %81 = load i32, i32* @WM8996_MICD_BIAS_STARTTIME_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @WM8996_MICD_RATE_SHIFT, align 4
  %84 = shl i32 5, %83
  %85 = load i32, i32* @WM8996_MICD_BIAS_STARTTIME_SHIFT, align 4
  %86 = shl i32 7, %85
  %87 = or i32 %84, %86
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %82, i32 %87)
  br label %99

89:                                               ; preds = %64
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %91 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %95 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SND_JACK_BTN_0, align 4
  %98 = call i32 @snd_soc_jack_report(i32 %96, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %89, %69
  br label %197

100:                                              ; preds = %60
  %101 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %102 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %167

105:                                              ; preds = %100
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, 1008
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %167

109:                                              ; preds = %105
  %110 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %111 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %115 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %120 = call i32 @wm8996_report_headphone(%struct.snd_soc_component* %119)
  br label %197

121:                                              ; preds = %109
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %123 = load i32, i32* @WM8996_ACCESSORY_DETECT_MODE_2, align 4
  %124 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* @WM8996_HPOUT1FB_SRC, align 4
  %126 = load i32, i32* @WM8996_MICD_SRC, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @WM8996_MICD_BIAS_SRC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %133 = load i32, i32* @WM8996_ACCESSORY_DETECT_MODE_2, align 4
  %134 = load i32, i32* @WM8996_HPOUT1FB_SRC, align 4
  %135 = load i32, i32* @WM8996_MICD_SRC, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @WM8996_MICD_BIAS_SRC, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i32 %138, i32 %139)
  %141 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %142 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %141, i32 0, i32 4
  %143 = load i32 (%struct.snd_soc_component.0*, i32)*, i32 (%struct.snd_soc_component.0*, i32)** %142, align 8
  %144 = icmp ne i32 (%struct.snd_soc_component.0*, i32)* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %121
  %146 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %147 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %146, i32 0, i32 4
  %148 = load i32 (%struct.snd_soc_component.0*, i32)*, i32 (%struct.snd_soc_component.0*, i32)** %147, align 8
  %149 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %150 = bitcast %struct.snd_soc_component* %149 to %struct.snd_soc_component.0*
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @WM8996_MICD_SRC, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 %148(%struct.snd_soc_component.0* %150, i32 %155)
  br label %157

157:                                              ; preds = %145, %121
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %159 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @WM8996_MICD_SRC, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 (i32, i8*, ...) @dev_dbg(i32 %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %197

167:                                              ; preds = %105, %100
  %168 = load i32, i32* %4, align 4
  %169 = and i32 %168, 1020
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %197

171:                                              ; preds = %167
  %172 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %173 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %171
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %178 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, ...) @dev_dbg(i32 %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %181 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %182 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @SND_JACK_BTN_0, align 4
  %185 = load i32, i32* @SND_JACK_BTN_0, align 4
  %186 = call i32 @snd_soc_jack_report(i32 %183, i32 %184, i32 %185)
  br label %196

187:                                              ; preds = %171
  %188 = load %struct.wm8996_priv*, %struct.wm8996_priv** %3, align 8
  %189 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %194 = call i32 @wm8996_report_headphone(%struct.snd_soc_component* %193)
  br label %195

195:                                              ; preds = %192, %187
  br label %196

196:                                              ; preds = %195, %176
  br label %197

197:                                              ; preds = %20, %30, %99, %118, %157, %196, %167
  ret void
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @wm8996_hpdet_start(%struct.snd_soc_component*) #1

declare dso_local i32 @wm8996_report_headphone(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
