; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown dai format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8804_AIFTX = common dso_local global i32 0, align 4
@WM8804_AIFRX = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown master/slave configuration\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown polarity configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8804_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8804_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %21 [
    i32 134, label %17
    i32 128, label %18
    i32 131, label %19
    i32 136, label %20
    i32 135, label %20
  ]

17:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %28

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

19:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %28

20:                                               ; preds = %2, %2
  store i32 3, i32* %7, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %20, %19, %18, %17
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %30 = load i32, i32* @WM8804_AIFTX, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 3, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = load i32, i32* @WM8804_AIFRX, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 3, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %42 [
    i32 138, label %40
    i32 137, label %41
  ]

40:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %49

41:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %49

42:                                               ; preds = %28
  %43 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %44 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %86

49:                                               ; preds = %41, %40
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %51 = load i32, i32* @WM8804_AIFRX, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 6
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 64, i32 %53)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %62 [
    i32 129, label %58
    i32 133, label %59
    i32 132, label %60
    i32 130, label %61
  ]

58:                                               ; preds = %49
  br label %69

59:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %69

60:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %69

61:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %69

62:                                               ; preds = %49
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %86

69:                                               ; preds = %61, %60, %59, %58
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = load i32, i32* @WM8804_AIFTX, align 4
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %72, 4
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 %74, 5
  %76 = or i32 %73, %75
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 48, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %79 = load i32, i32* @WM8804_AIFRX, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 4
  %82 = load i32, i32* %10, align 4
  %83 = shl i32 %82, 5
  %84 = or i32 %81, %83
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 48, i32 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %69, %62, %42, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
