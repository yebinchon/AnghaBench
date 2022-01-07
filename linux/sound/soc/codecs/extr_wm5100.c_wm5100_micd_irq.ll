; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_micd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_micd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@WM5100_MIC_DETECT_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read microphone status: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Microphone event: %x\0A\00", align 1
@WM5100_ACCDET_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Microphone detection state invalid\0A\00", align 1
@WM5100_ACCDET_STS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Jack removal detected\0A\00", align 1
@SND_JACK_LINEOUT = common dso_local global i32 0, align 4
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@WM5100_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM5100_ACCDET_RATE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Microphone detected\0A\00", align 1
@WM5100_ACCDET_RATE_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Mic button up\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Mic button detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm5100_priv*)* @wm5100_micd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_micd_irq(%struct.wm5100_priv* %0) #0 {
  %2 = alloca %struct.wm5100_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wm5100_priv* %0, %struct.wm5100_priv** %2, align 8
  %5 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @WM5100_MIC_DETECT_3, align 4
  %9 = call i32 @regmap_read(i32 %7, i32 %8, i32* %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %14 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %171

18:                                               ; preds = %1
  %19 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %20 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @WM5100_ACCDET_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %30 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_warn(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %171

33:                                               ; preds = %18
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @WM5100_ACCDET_STS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %40 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %44 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %46 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %48 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %50 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SND_JACK_LINEOUT, align 4
  %53 = load i32, i32* @SND_JACK_HEADSET, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SND_JACK_BTN_0, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @snd_soc_jack_report(i32 %51, i32 0, i32 %56)
  %58 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %59 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WM5100_MIC_DETECT_1, align 4
  %62 = load i32, i32* @WM5100_ACCDET_RATE_MASK, align 4
  %63 = load i32, i32* @WM5100_ACCDET_RATE_MASK, align 4
  %64 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %63)
  br label %171

65:                                               ; preds = %33
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 1024
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %65
  %70 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %71 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %76 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %80 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %82 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %81, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %84 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SND_JACK_HEADSET, align 4
  %87 = load i32, i32* @SND_JACK_HEADSET, align 4
  %88 = load i32, i32* @SND_JACK_BTN_0, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @snd_soc_jack_report(i32 %85, i32 %86, i32 %89)
  %91 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %92 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @WM5100_MIC_DETECT_1, align 4
  %95 = load i32, i32* @WM5100_ACCDET_RATE_MASK, align 4
  %96 = load i32, i32* @WM5100_ACCDET_RATE_SHIFT, align 4
  %97 = shl i32 5, %96
  %98 = call i32 @regmap_update_bits(i32 %93, i32 %94, i32 %95, i32 %97)
  br label %109

99:                                               ; preds = %69
  %100 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %101 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_dbg(i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %104 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %105 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SND_JACK_BTN_0, align 4
  %108 = call i32 @snd_soc_jack_report(i32 %106, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %99, %74
  br label %171

110:                                              ; preds = %65
  %111 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %112 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load i32, i32* %3, align 4
  %117 = and i32 %116, 1016
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %115
  %120 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %121 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %125 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %130 = call i32 @wm5100_report_headphone(%struct.wm5100_priv* %129)
  br label %140

131:                                              ; preds = %119
  %132 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %133 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %134 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @wm5100_set_detect_mode(%struct.wm5100_priv* %132, i32 %138)
  br label %140

140:                                              ; preds = %131, %128
  br label %171

141:                                              ; preds = %115, %110
  %142 = load i32, i32* %3, align 4
  %143 = and i32 %142, 1020
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %141
  %146 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %147 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %152 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @dev_dbg(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %155 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %156 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SND_JACK_BTN_0, align 4
  %159 = load i32, i32* @SND_JACK_BTN_0, align 4
  %160 = call i32 @snd_soc_jack_report(i32 %157, i32 %158, i32 %159)
  br label %170

161:                                              ; preds = %145
  %162 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %163 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.wm5100_priv*, %struct.wm5100_priv** %2, align 8
  %168 = call i32 @wm5100_report_headphone(%struct.wm5100_priv* %167)
  br label %169

169:                                              ; preds = %166, %161
  br label %170

170:                                              ; preds = %169, %150
  br label %171

171:                                              ; preds = %12, %28, %38, %109, %140, %170, %141
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @wm5100_report_headphone(%struct.wm5100_priv*) #1

declare dso_local i32 @wm5100_set_detect_mode(%struct.wm5100_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
