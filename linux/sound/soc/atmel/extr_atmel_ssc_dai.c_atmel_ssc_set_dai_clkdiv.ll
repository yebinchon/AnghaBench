; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_info = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.platform_device = type { i64 }

@ssc_info = common dso_local global %struct.atmel_ssc_info* null, align 8
@SSC_DIR_MASK_PLAYBACK = common dso_local global i32 0, align 4
@SSC_DIR_MASK_CAPTURE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @atmel_ssc_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ssc_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.atmel_ssc_info*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.platform_device* @to_platform_device(i32 %12)
  store %struct.platform_device* %13, %struct.platform_device** %8, align 8
  %14 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** @ssc_info, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %14, i64 %17
  store %struct.atmel_ssc_info* %18, %struct.atmel_ssc_info** %9, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %76 [
    i32 130, label %20
    i32 128, label %58
    i32 129, label %67
  ]

20:                                               ; preds = %3
  %21 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %22 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SSC_DIR_MASK_PLAYBACK, align 4
  %25 = load i32, i32* @SSC_DIR_MASK_CAPTURE, align 4
  %26 = or i32 %24, %25
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %31 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %52

32:                                               ; preds = %20
  %33 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %34 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %40 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %44 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %80

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %28
  %53 = call i32 @BIT(i32 130)
  %54 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %55 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %79

58:                                               ; preds = %3
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %61 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = call i32 @BIT(i32 128)
  %63 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %64 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %79

67:                                               ; preds = %3
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %70 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = call i32 @BIT(i32 129)
  %72 = load %struct.atmel_ssc_info*, %struct.atmel_ssc_info** %9, align 8
  %73 = getelementptr inbounds %struct.atmel_ssc_info, %struct.atmel_ssc_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %79

76:                                               ; preds = %3
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %67, %58, %52
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %47
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
