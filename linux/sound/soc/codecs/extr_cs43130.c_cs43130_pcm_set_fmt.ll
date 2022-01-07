; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_pcm_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_pcm_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs43130_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unsupported mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported audio format\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"dai_id = %d,  dai_mode = %u, dai_format = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs43130_pcm_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_pcm_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs43130_private*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 1
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.cs43130_private* %12, %struct.cs43130_private** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %34 [
    i32 132, label %16
    i32 133, label %25
  ]

16:                                               ; preds = %2
  %17 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %18 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 132, i32* %24, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %27 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 133, i32* %33, align 4
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %114

41:                                               ; preds = %25, %16
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %81 [
    i32 129, label %45
    i32 128, label %54
    i32 131, label %63
    i32 130, label %72
  ]

45:                                               ; preds = %41
  %46 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %47 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 129, i32* %53, align 4
  br label %88

54:                                               ; preds = %41
  %55 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %56 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 128, i32* %62, align 4
  br label %88

63:                                               ; preds = %41
  %64 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %65 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 131, i32* %71, align 4
  br label %88

72:                                               ; preds = %41
  %73 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %74 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %77 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 130, i32* %80, align 4
  br label %88

81:                                               ; preds = %41
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %72, %63, %54, %45
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %90 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %93 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %96 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %105 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %94, i32 %103, i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %88, %81, %34
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.cs43130_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
