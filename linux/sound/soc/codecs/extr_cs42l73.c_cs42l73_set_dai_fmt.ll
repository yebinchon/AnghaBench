; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l73.c_cs42l73_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42l73_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@CS42L73_MS_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@CS42L73_SPDIF_PCM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PCM format in slave mode only\0A\00", align 1
@CS42L73_ASP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PCM format is not supported on ASP port\0A\00", align 1
@CS42L73_PCM_MODE_MASK = common dso_local global i32 0, align 4
@CS42L73_PCM_BIT_ORDER = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_IB_IF = common dso_local global i32 0, align 4
@CS42L73_PCM_MODE0 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_IB_NF = common dso_local global i32 0, align 4
@CS42L73_PCM_MODE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l73_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l73_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs42l73_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %6, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = call %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.cs42l73_private* %17, %struct.cs42l73_private** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @CS42L73_SPC(i32 %22)
  %24 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %21, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @CS42L73_MMCC(i32 %26)
  %28 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %41 [
    i32 132, label %32
    i32 131, label %36
  ]

32:                                               ; preds = %2
  %33 = load i32, i32* @CS42L73_MS_MASTER, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @CS42L73_MS_MASTER, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %12, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %147

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  switch i32 %51, label %84 [
    i32 128, label %52
    i32 130, label %57
    i32 129, label %57
  ]

52:                                               ; preds = %44
  %53 = load i32, i32* @CS42L73_SPDIF_PCM, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %87

57:                                               ; preds = %44, %44
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @CS42L73_MS_MASTER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %147

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @CS42L73_ASP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %147

80:                                               ; preds = %69
  %81 = load i32, i32* @CS42L73_SPDIF_PCM, align 4
  %82 = load i32, i32* %11, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %87

84:                                               ; preds = %44
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %147

87:                                               ; preds = %80, %52
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @CS42L73_SPDIF_PCM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %87
  %93 = load i32, i32* @CS42L73_PCM_MODE_MASK, align 4
  %94 = load i32, i32* @CS42L73_PCM_BIT_ORDER, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  switch i32 %99, label %126 [
    i32 129, label %100
    i32 130, label %117
  ]

100:                                              ; preds = %92
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @SND_SOC_DAIFMT_IB_IF, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @CS42L73_PCM_MODE0, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @SND_SOC_DAIFMT_IB_NF, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @CS42L73_PCM_MODE1, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %112, %108
  br label %129

117:                                              ; preds = %92
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @SND_SOC_DAIFMT_IB_IF, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @CS42L73_PCM_MODE1, align 4
  %123 = load i32, i32* %11, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %121, %117
  br label %129

126:                                              ; preds = %92
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %147

129:                                              ; preds = %125, %116
  br label %130

130:                                              ; preds = %129, %87
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.cs42l73_private*, %struct.cs42l73_private** %7, align 8
  %133 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %131, i32* %138, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.cs42l73_private*, %struct.cs42l73_private** %7, align 8
  %141 = getelementptr inbounds %struct.cs42l73_private, %struct.cs42l73_private* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i32 %139, i32* %146, align 4
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %130, %126, %84, %73, %62, %41
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.cs42l73_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @CS42L73_SPC(i32) #1

declare dso_local i32 @CS42L73_MMCC(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
