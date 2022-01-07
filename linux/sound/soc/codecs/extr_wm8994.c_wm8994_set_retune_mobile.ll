; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_retune_mobile.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_set_retune_mobile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { i32*, i64*, i32*, i32, %struct.wm8994* }
%struct.wm8994 = type { %struct.wm8994_pdata }
%struct.wm8994_pdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64, i32 }

@wm8994_retune_mobile_base = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ReTune Mobile %d %s/%dHz for %dHz sample rate\0A\00", align 1
@WM8994_AIF1DAC1_EQ_ENA = common dso_local global i32 0, align 4
@WM8994_EQ_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wm8994_set_retune_mobile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8994_set_retune_mobile(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8994_priv*, align 8
  %6 = alloca %struct.wm8994*, align 8
  %7 = alloca %struct.wm8994_pdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8994_priv* %16, %struct.wm8994_priv** %5, align 8
  %17 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %18 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %17, i32 0, i32 4
  %19 = load %struct.wm8994*, %struct.wm8994** %18, align 8
  store %struct.wm8994* %19, %struct.wm8994** %6, align 8
  %20 = load %struct.wm8994*, %struct.wm8994** %6, align 8
  %21 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %20, i32 0, i32 0
  store %struct.wm8994_pdata* %21, %struct.wm8994_pdata** %7, align 8
  %22 = load i32*, i32** @wm8994_retune_mobile_base, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %28 = icmp ne %struct.wm8994_pdata* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %31 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %2
  br label %182

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %39 [
    i32 0, label %37
    i32 1, label %37
    i32 2, label %38
  ]

37:                                               ; preds = %35, %35
  store i32 0, i32* %9, align 4
  br label %40

38:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %40

39:                                               ; preds = %35
  br label %182

40:                                               ; preds = %38, %37
  %41 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %48 = load i32, i32* @INT_MAX, align 4
  store i32 %48, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %113, %40
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %52 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %116

55:                                               ; preds = %49
  %56 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %57 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %65 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @strcmp(i32 %63, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %55
  %74 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %75 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %83 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %81, %88
  %90 = call i32 @abs(i64 %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %73
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %96 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %104 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %102, %109
  %111 = call i32 @abs(i64 %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %93, %73, %55
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %49

116:                                              ; preds = %49
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %118 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %122 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %130 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.wm8994_priv*, %struct.wm8994_priv** %5, align 8
  %138 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @dev_dbg(i32 %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %128, i64 %136, i64 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %145, i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* @WM8994_AIF1DAC1_EQ_ENA, align 4
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %173, %116
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @WM8994_EQ_REGS, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %151
  %156 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %157, %158
  %160 = load %struct.wm8994_pdata*, %struct.wm8994_pdata** %7, align 8
  %161 = getelementptr inbounds %struct.wm8994_pdata, %struct.wm8994_pdata* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %156, i32 %159, i32 65535, i32 %171)
  br label %173

173:                                              ; preds = %155
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %151

176:                                              ; preds = %151
  %177 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @WM8994_AIF1DAC1_EQ_ENA, align 4
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %177, i32 %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %176, %39, %34
  ret void
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
