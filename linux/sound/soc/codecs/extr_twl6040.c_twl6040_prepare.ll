; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl6040.c_twl6040_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.twl6040 = type { i32 }
%struct.twl6040_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"no mclk configured, call set_sysclk() on init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can not set PLL (%d)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @twl6040_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_prepare(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.twl6040*, align 8
  %8 = alloca %struct.twl6040_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.twl6040* @to_twl6040(%struct.snd_soc_component* %13)
  store %struct.twl6040* %14, %struct.twl6040** %7, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %16 = call %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.twl6040_data* %16, %struct.twl6040_data** %8, align 8
  %17 = load %struct.twl6040_data*, %struct.twl6040_data** %8, align 8
  %18 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %30 = load %struct.twl6040_data*, %struct.twl6040_data** %8, align 8
  %31 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.twl6040_data*, %struct.twl6040_data** %8, align 8
  %34 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.twl6040_data*, %struct.twl6040_data** %8, align 8
  %37 = getelementptr inbounds %struct.twl6040_data, %struct.twl6040_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @twl6040_set_pll(%struct.twl6040* %29, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %44 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.twl6040* @to_twl6040(%struct.snd_soc_component*) #1

declare dso_local %struct.twl6040_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @twl6040_set_pll(%struct.twl6040*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
