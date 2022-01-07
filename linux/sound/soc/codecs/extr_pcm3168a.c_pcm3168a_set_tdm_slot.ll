; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm3168a.c_pcm3168a_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm3168a_priv = type { %struct.pcm3168a_io_params* }
%struct.pcm3168a_io_params = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Bad tdm mask tx: 0x%08x rx: 0x%08x slots %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported slot_width %d\0A\00", align 1
@PCM3168A_DAI_DAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @pcm3168a_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm3168a_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.pcm3168a_priv*, align 8
  %14 = alloca %struct.pcm3168a_io_params*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %19 = call %struct.pcm3168a_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.pcm3168a_priv* %19, %struct.pcm3168a_priv** %13, align 8
  %20 = load %struct.pcm3168a_priv*, %struct.pcm3168a_priv** %13, align 8
  %21 = getelementptr inbounds %struct.pcm3168a_priv, %struct.pcm3168a_priv* %20, i32 0, i32 0
  %22 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %21, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %22, i64 %25
  store %struct.pcm3168a_io_params* %26, %struct.pcm3168a_io_params** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 1, %28
  %30 = icmp uge i32 %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 1, %33
  %35 = icmp uge i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31, %5
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %38 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %87

46:                                               ; preds = %31
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 16
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 24
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 32
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %87

66:                                               ; preds = %55, %52, %49, %46
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %14, align 8
  %69 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %14, align 8
  %72 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %74 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCM3168A_DAI_DAC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %14, align 8
  %81 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %86

82:                                               ; preds = %66
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.pcm3168a_io_params*, %struct.pcm3168a_io_params** %14, align 8
  %85 = getelementptr inbounds %struct.pcm3168a_io_params, %struct.pcm3168a_io_params* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %78
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %58, %36
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.pcm3168a_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
