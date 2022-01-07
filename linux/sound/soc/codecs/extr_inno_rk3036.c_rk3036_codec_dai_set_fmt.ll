; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_inno_rk3036.c_rk3036_codec_dai_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_inno_rk3036.c_rk3036_codec_dai_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"rk3036_codec dai set fmt : %08x\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@INNO_R01_PINDIR_IN_SLAVE = common dso_local global i32 0, align 4
@INNO_R01_I2SMODE_SLAVE = common dso_local global i32 0, align 4
@INNO_R01_PINDIR_OUT_MASTER = common dso_local global i32 0, align 4
@INNO_R01_I2SMODE_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid fmt\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@INNO_R02_DACM_PCM = common dso_local global i32 0, align 4
@INNO_R02_DACM_I2S = common dso_local global i32 0, align 4
@INNO_R02_DACM_RJM = common dso_local global i32 0, align 4
@INNO_R02_DACM_LJM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"set dai format failed\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@INNO_R02_LRCP_NORMAL = common dso_local global i32 0, align 4
@INNO_R03_BCP_NORMAL = common dso_local global i32 0, align 4
@INNO_R02_LRCP_REVERSAL = common dso_local global i32 0, align 4
@INNO_R03_BCP_REVERSAL = common dso_local global i32 0, align 4
@INNO_R01 = common dso_local global i32 0, align 4
@INNO_R01_I2SMODE_MSK = common dso_local global i32 0, align 4
@INNO_R01_PINDIR_MSK = common dso_local global i32 0, align 4
@INNO_R02 = common dso_local global i32 0, align 4
@INNO_R02_LRCP_MSK = common dso_local global i32 0, align 4
@INNO_R02_DACM_MSK = common dso_local global i32 0, align 4
@INNO_R03 = common dso_local global i32 0, align 4
@INNO_R03_BCP_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rk3036_codec_dai_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3036_codec_dai_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %33 [
    i32 136, label %21
    i32 137, label %27
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @INNO_R01_PINDIR_IN_SLAVE, align 4
  %23 = load i32, i32* @INNO_R01_I2SMODE_SLAVE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* @INNO_R01_PINDIR_OUT_MASTER, align 4
  %29 = load i32, i32* @INNO_R01_I2SMODE_MASTER, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %126

40:                                               ; preds = %27, %21
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %60 [
    i32 135, label %44
    i32 134, label %48
    i32 128, label %52
    i32 131, label %56
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @INNO_R02_DACM_PCM, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %67

48:                                               ; preds = %40
  %49 = load i32, i32* @INNO_R02_DACM_I2S, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %67

52:                                               ; preds = %40
  %53 = load i32, i32* @INNO_R02_DACM_RJM, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %67

56:                                               ; preds = %40
  %57 = load i32, i32* @INNO_R02_DACM_LJM, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %67

60:                                               ; preds = %40
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %126

67:                                               ; preds = %56, %52, %48, %44
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %70 = and i32 %68, %69
  switch i32 %70, label %99 [
    i32 129, label %71
    i32 133, label %78
    i32 132, label %85
    i32 130, label %92
  ]

71:                                               ; preds = %67
  %72 = load i32, i32* @INNO_R02_LRCP_NORMAL, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @INNO_R03_BCP_NORMAL, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %106

78:                                               ; preds = %67
  %79 = load i32, i32* @INNO_R02_LRCP_REVERSAL, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @INNO_R03_BCP_REVERSAL, align 4
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %106

85:                                               ; preds = %67
  %86 = load i32, i32* @INNO_R02_LRCP_REVERSAL, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @INNO_R03_BCP_NORMAL, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %106

92:                                               ; preds = %67
  %93 = load i32, i32* @INNO_R02_LRCP_NORMAL, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @INNO_R03_BCP_REVERSAL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %106

99:                                               ; preds = %67
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %101 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %126

106:                                              ; preds = %92, %85, %78, %71
  %107 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %108 = load i32, i32* @INNO_R01, align 4
  %109 = load i32, i32* @INNO_R01_I2SMODE_MSK, align 4
  %110 = load i32, i32* @INNO_R01_PINDIR_MSK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %107, i32 %108, i32 %111, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %115 = load i32, i32* @INNO_R02, align 4
  %116 = load i32, i32* @INNO_R02_LRCP_MSK, align 4
  %117 = load i32, i32* @INNO_R02_DACM_MSK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %114, i32 %115, i32 %118, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %122 = load i32, i32* @INNO_R03, align 4
  %123 = load i32, i32* @INNO_R03_BCP_MSK, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %123, i32 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %106, %99, %60, %33
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
