; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.madera_priv = type { i32, i32, i32, %struct.madera* }
%struct.madera = type { i32, i32 }

@MADERA_SYSCLK_FREQ_MASK = common dso_local global i32 0, align 4
@MADERA_SYSCLK_SRC_MASK = common dso_local global i32 0, align 4
@MADERA_SYSCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SYSCLK\00", align 1
@MADERA_SYSTEM_CLOCK_1 = common dso_local global i32 0, align 4
@MADERA_SYSCLK_FRAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ASYNCCLK\00", align 1
@MADERA_ASYNC_CLOCK_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DSPCLK\00", align 1
@MADERA_DSP_CLOCK_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to get clk setting for %dHZ\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s cleared\0A\00", align 1
@MADERA_DSP_CLOCK_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to write DSP_CONFIG2: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s set to %uHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.madera_priv*, align 8
  %13 = alloca %struct.madera*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %23 = call %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.madera_priv* %23, %struct.madera_priv** %12, align 8
  %24 = load %struct.madera_priv*, %struct.madera_priv** %12, align 8
  %25 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %24, i32 0, i32 3
  %26 = load %struct.madera*, %struct.madera** %25, align 8
  store %struct.madera* %26, %struct.madera** %13, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* @MADERA_SYSCLK_FREQ_MASK, align 4
  %28 = load i32, i32* @MADERA_SYSCLK_SRC_MASK, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MADERA_SYSCLK_SRC_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %66 [
    i32 128, label %34
    i32 133, label %43
    i32 131, label %49
    i32 130, label %56
    i32 132, label %56
    i32 129, label %61
  ]

34:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %35 = load i32, i32* @MADERA_SYSTEM_CLOCK_1, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.madera_priv*, %struct.madera_priv** %12, align 8
  %37 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %36, i32 0, i32 0
  store i32* %37, i32** %20, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @madera_get_sysclk_setting(i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* @MADERA_SYSCLK_FRAC, align 4
  %41 = load i32, i32* %17, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %17, align 4
  br label %69

43:                                               ; preds = %5
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %44 = load i32, i32* @MADERA_ASYNC_CLOCK_1, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.madera_priv*, %struct.madera_priv** %12, align 8
  %46 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %45, i32 0, i32 1
  store i32* %46, i32** %20, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @madera_get_sysclk_setting(i32 %47)
  store i32 %48, i32* %19, align 4
  br label %69

49:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %50 = load i32, i32* @MADERA_DSP_CLOCK_1, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.madera_priv*, %struct.madera_priv** %12, align 8
  %52 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %51, i32 0, i32 2
  store i32* %52, i32** %20, align 8
  %53 = load %struct.madera*, %struct.madera** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @madera_get_dspclk_setting(%struct.madera* %53, i32 %54, i32* %16)
  store i32 %55, i32* %19, align 4
  br label %69

56:                                               ; preds = %5, %5
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @madera_set_opclk(%struct.snd_soc_component* %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %136

61:                                               ; preds = %5
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @madera_set_outclk(%struct.snd_soc_component* %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %136

66:                                               ; preds = %5
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %136

69:                                               ; preds = %49, %43, %34
  %70 = load i32, i32* %19, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.madera*, %struct.madera** %13, align 8
  %74 = getelementptr inbounds %struct.madera, %struct.madera* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %19, align 4
  store i32 %78, i32* %6, align 4
  br label %136

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %20, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.madera*, %struct.madera** %13, align 8
  %86 = getelementptr inbounds %struct.madera, %struct.madera* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  store i32 0, i32* %6, align 4
  br label %136

90:                                               ; preds = %79
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %18, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.madera*, %struct.madera** %13, align 8
  %98 = getelementptr inbounds %struct.madera, %struct.madera* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MADERA_DSP_CLOCK_2, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @regmap_write(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load %struct.madera*, %struct.madera** %13, align 8
  %107 = getelementptr inbounds %struct.madera, %struct.madera* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %21, align 4
  store i32 %111, i32* %6, align 4
  br label %136

112:                                              ; preds = %96
  %113 = load i32, i32* @MADERA_SYSCLK_SRC_MASK, align 4
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %112, %90
  %115 = load i32, i32* %10, align 4
  %116 = urem i32 %115, 6144000
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @MADERA_SYSCLK_FRAC, align 4
  %120 = load i32, i32* %18, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.madera*, %struct.madera** %13, align 8
  %124 = getelementptr inbounds %struct.madera, %struct.madera* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %126, i32 %127)
  %129 = load %struct.madera*, %struct.madera** %13, align 8
  %130 = getelementptr inbounds %struct.madera, %struct.madera* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @regmap_update_bits(i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %122, %105, %84, %72, %66, %61, %56
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.madera_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @madera_get_sysclk_setting(i32) #1

declare dso_local i32 @madera_get_dspclk_setting(%struct.madera*, i32, i32*) #1

declare dso_local i32 @madera_set_opclk(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @madera_set_outclk(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
