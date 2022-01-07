; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_micd_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8958_micd_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8958_micd_rate = type { i32, i32, i32, i64 }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32*, i64, i32, %struct.wm8994* }
%struct.wm8994 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wm8958_micd_rate* }

@WM8994_CLOCKING_1 = common dso_local global i32 0, align 4
@WM8994_SYSCLK_SRC = common dso_local global i32 0, align 4
@jackdet_rates = common dso_local global %struct.wm8958_micd_rate* null, align 8
@micdet_rates = common dso_local global %struct.wm8958_micd_rate* null, align 8
@WM8958_MICD_BIAS_STARTTIME_SHIFT = common dso_local global i32 0, align 4
@WM8958_MICD_RATE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MICD rate %d,%d for %dHz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@WM8958_MIC_DETECT_1 = common dso_local global i32 0, align 4
@WM8958_MICD_BIAS_STARTTIME_MASK = common dso_local global i32 0, align 4
@WM8958_MICD_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8958_micd_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8958_micd_set_rate(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8994_priv*, align 8
  %4 = alloca %struct.wm8994*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8958_micd_rate*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %13 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8994_priv* %13, %struct.wm8994_priv** %3, align 8
  %14 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %15 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %14, i32 0, i32 3
  %16 = load %struct.wm8994*, %struct.wm8994** %15, align 8
  store %struct.wm8994* %16, %struct.wm8994** %4, align 8
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = load i32, i32* @WM8994_CLOCKING_1, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WM8994_SYSCLK_SRC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %32 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %42

36:                                               ; preds = %1
  %37 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %38 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %44 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %45, align 8
  %47 = icmp ne %struct.wm8958_micd_rate* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %50 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %51, align 8
  store %struct.wm8958_micd_rate* %52, %struct.wm8958_micd_rate** %10, align 8
  %53 = load %struct.wm8994*, %struct.wm8994** %4, align 8
  %54 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  br label %71

57:                                               ; preds = %42
  %58 = load %struct.wm8994_priv*, %struct.wm8994_priv** %3, align 8
  %59 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** @jackdet_rates, align 8
  store %struct.wm8958_micd_rate* %63, %struct.wm8958_micd_rate** %10, align 8
  %64 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** @jackdet_rates, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.wm8958_micd_rate* %64)
  store i32 %65, i32* %11, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** @micdet_rates, align 8
  store %struct.wm8958_micd_rate* %67, %struct.wm8958_micd_rate** %10, align 8
  %68 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** @micdet_rates, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.wm8958_micd_rate* %68)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %48
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %123, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %72
  %77 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %77, i64 %79
  %81 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %123

86:                                               ; preds = %76
  %87 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %87, i64 %89
  %91 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %92, %94
  %96 = call i64 @abs(i64 %95)
  %97 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %97, i64 %99
  %101 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %102, %104
  %106 = call i64 @abs(i64 %105)
  %107 = icmp slt i64 %96, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %86
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %5, align 4
  br label %122

110:                                              ; preds = %86
  %111 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %111, i64 %113
  %115 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %110
  br label %122

122:                                              ; preds = %121, %108
  br label %123

123:                                              ; preds = %122, %85
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %72

126:                                              ; preds = %72
  %127 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %127, i64 %129
  %131 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @WM8958_MICD_BIAS_STARTTIME_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %135, i64 %137
  %139 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @WM8958_MICD_RATE_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %134, %142
  store i32 %143, i32* %8, align 4
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %145 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %147, i64 %149
  %151 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wm8958_micd_rate*, %struct.wm8958_micd_rate** %10, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %153, i64 %155
  %157 = getelementptr inbounds %struct.wm8958_micd_rate, %struct.wm8958_micd_rate* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %164 = call i32 @dev_dbg(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %158, i32 %159, i8* %163)
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %166 = load i32, i32* @WM8958_MIC_DETECT_1, align 4
  %167 = load i32, i32* @WM8958_MICD_BIAS_STARTTIME_MASK, align 4
  %168 = load i32, i32* @WM8958_MICD_RATE_MASK, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %165, i32 %166, i32 %169, i32 %170)
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.wm8958_micd_rate*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
