; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_log_status4.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_log_status4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5100_priv = type { i32 }

@WM5100_AIF3_ERR_EINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"AIF3 configuration error\0A\00", align 1
@WM5100_AIF2_ERR_EINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"AIF2 configuration error\0A\00", align 1
@WM5100_AIF1_ERR_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"AIF1 configuration error\0A\00", align 1
@WM5100_CTRLIF_ERR_EINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Control interface error\0A\00", align 1
@WM5100_ISRC2_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ISRC2 underclocked\0A\00", align 1
@WM5100_ISRC1_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"ISRC1 underclocked\0A\00", align 1
@WM5100_FX_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"FX underclocked\0A\00", align 1
@WM5100_AIF3_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"AIF3 underclocked\0A\00", align 1
@WM5100_AIF2_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"AIF2 underclocked\0A\00", align 1
@WM5100_AIF1_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"AIF1 underclocked\0A\00", align 1
@WM5100_ASRC_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"ASRC underclocked\0A\00", align 1
@WM5100_DAC_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"DAC underclocked\0A\00", align 1
@WM5100_ADC_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"ADC underclocked\0A\00", align 1
@WM5100_MIXER_UNDERCLOCKED_EINT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"Mixer underclocked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm5100_priv*, i32)* @wm5100_log_status4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_log_status4(%struct.wm5100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wm5100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.wm5100_priv* %0, %struct.wm5100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @WM5100_AIF3_ERR_EINT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @WM5100_AIF2_ERR_EINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %21 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @WM5100_AIF1_ERR_EINT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %31 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @WM5100_CTRLIF_ERR_EINT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @WM5100_ISRC2_UNDERCLOCKED_EINT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %51 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @WM5100_ISRC1_UNDERCLOCKED_EINT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %61 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @WM5100_FX_UNDERCLOCKED_EINT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %71 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @WM5100_AIF3_UNDERCLOCKED_EINT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %81 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @WM5100_AIF2_UNDERCLOCKED_EINT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %91 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @WM5100_AIF1_UNDERCLOCKED_EINT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %101 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @WM5100_ASRC_UNDERCLOCKED_EINT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %111 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @WM5100_DAC_UNDERCLOCKED_EINT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %121 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @WM5100_ADC_UNDERCLOCKED_EINT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %131 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @WM5100_MIXER_UNDERCLOCKED_EINT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.wm5100_priv*, %struct.wm5100_priv** %3, align 8
  %141 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %144

144:                                              ; preds = %139, %134
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
