; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_retune_mobile.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8904.c_wm8904_set_retune_mobile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8904_priv = type { i32, i64, i32*, i32, %struct.wm8904_pdata* }
%struct.wm8904_pdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ReTune Mobile %s/%dHz for %dHz sample rate\0A\00", align 1
@WM8904_EQ1 = common dso_local global i64 0, align 8
@WM8904_EQ_REGS = common dso_local global i32 0, align 4
@WM8904_EQ_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @wm8904_set_retune_mobile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8904_set_retune_mobile(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.wm8904_priv*, align 8
  %4 = alloca %struct.wm8904_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %11 = call %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm8904_priv* %11, %struct.wm8904_priv** %3, align 8
  %12 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %12, i32 0, i32 4
  %14 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %13, align 8
  store %struct.wm8904_pdata* %14, %struct.wm8904_pdata** %4, align 8
  %15 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %16 = icmp ne %struct.wm8904_pdata* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %19 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %1
  br label %146

23:                                               ; preds = %17
  %24 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %25 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %5, align 4
  %27 = load i32, i32* @INT_MAX, align 4
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %84, %23
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %28
  %35 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %36 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %44 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @strcmp(i32 %42, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %34
  %53 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %54 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %62 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = call i32 @abs(i64 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %71 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %79 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @abs(i64 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %68, %52, %34
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %28

87:                                               ; preds = %28
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %92 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %100 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.wm8904_priv*, %struct.wm8904_priv** %3, align 8
  %108 = getelementptr inbounds %struct.wm8904_priv, %struct.wm8904_priv* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %98, i64 %106, i64 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %112 = load i64, i64* @WM8904_EQ1, align 8
  %113 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %111, i64 %112)
  store i32 %113, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %137, %87
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @WM8904_EQ_REGS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %120 = load i64, i64* @WM8904_EQ1, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load %struct.wm8904_pdata*, %struct.wm8904_pdata** %4, align 8
  %125 = getelementptr inbounds %struct.wm8904_pdata, %struct.wm8904_pdata* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %119, i64 %123, i32 65535, i32 %135)
  br label %137

137:                                              ; preds = %118
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %114

140:                                              ; preds = %114
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %142 = load i64, i64* @WM8904_EQ1, align 8
  %143 = load i32, i32* @WM8904_EQ_ENA, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %141, i64 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %22
  ret void
}

declare dso_local %struct.wm8904_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
