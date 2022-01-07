; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_retune_mobile.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8996.c_wm8996_set_retune_mobile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8996_priv = type { i32*, i64*, i32*, i32, %struct.wm8996_pdata }
%struct.wm8996_pdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64, i32 }

@WM8996_DSP1_RX_EQ_GAINS_1 = common dso_local global i32 0, align 4
@WM8996_POWER_MANAGEMENT_8 = common dso_local global i32 0, align 4
@WM8996_DSP1RX_SRC = common dso_local global i32 0, align 4
@WM8996_DSP1_RX_EQ_GAINS_2 = common dso_local global i32 0, align 4
@WM8996_DSP2RX_SRC = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ReTune Mobile %d %s/%dHz for %dHz sample rate\0A\00", align 1
@WM8996_DSP1RX_EQ_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wm8996_set_retune_mobile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8996_set_retune_mobile(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8996_priv*, align 8
  %6 = alloca %struct.wm8996_pdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm8996_priv* %15, %struct.wm8996_priv** %5, align 8
  %16 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %17 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %16, i32 0, i32 4
  store %struct.wm8996_pdata* %17, %struct.wm8996_pdata** %6, align 8
  %18 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %198

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %47 [
    i32 0, label %25
    i32 1, label %36
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @WM8996_DSP1_RX_EQ_GAINS_1, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %28 = load i32, i32* @WM8996_POWER_MANAGEMENT_8, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %28)
  %30 = load i32, i32* @WM8996_DSP1RX_SRC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %13, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %48

36:                                               ; preds = %23
  %37 = load i32, i32* @WM8996_DSP1_RX_EQ_GAINS_2, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = load i32, i32* @WM8996_POWER_MANAGEMENT_8, align 4
  %40 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %38, i32 %39)
  %41 = load i32, i32* @WM8996_DSP2RX_SRC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %48

47:                                               ; preds = %23
  br label %198

48:                                               ; preds = %46, %35
  %49 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %50 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  store i32 0, i32* %8, align 4
  %56 = load i32, i32* @INT_MAX, align 4
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %121, %48
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %60 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %124

63:                                               ; preds = %57
  %64 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %65 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %73 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i32 %71, i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %63
  %82 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %83 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %91 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %89, %96
  %98 = call i32 @abs(i64 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %81
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %8, align 4
  %103 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %104 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %112 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %110, %117
  %119 = call i32 @abs(i64 %118)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %101, %81, %63
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %57

124:                                              ; preds = %57
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %126 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %130 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %138 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.wm8996_priv*, %struct.wm8996_priv** %5, align 8
  %146 = getelementptr inbounds %struct.wm8996_priv, %struct.wm8996_priv* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @dev_dbg(i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %136, i64 %144, i64 %151)
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %153, i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* @WM8996_DSP1RX_EQ_ENA, align 4
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %189, %124
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %162 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @ARRAY_SIZE(i32* %168)
  %170 = icmp slt i32 %160, %169
  br i1 %170, label %171, label %192

171:                                              ; preds = %159
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %173, %174
  %176 = load %struct.wm8996_pdata*, %struct.wm8996_pdata** %6, align 8
  %177 = getelementptr inbounds %struct.wm8996_pdata, %struct.wm8996_pdata* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %172, i32 %175, i32 65535, i32 %187)
  br label %189

189:                                              ; preds = %171
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %159

192:                                              ; preds = %159
  %193 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @WM8996_DSP1RX_EQ_ENA, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %193, i32 %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %192, %47, %22
  ret void
}

declare dso_local %struct.wm8996_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
