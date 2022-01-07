; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_fmt_multiple_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_fmt_multiple_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_dai_driver = type { i32* }

@.str = private unnamed_addr constant [55 x i8] c"ASoC: error - multiple DAI %s registered with no name\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, %struct.snd_soc_dai_driver*)* @fmt_multiple_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_multiple_name(%struct.device* %0, %struct.snd_soc_dai_driver* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_soc_dai_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %5, align 8
  %6 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %7 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @dev_name(%struct.device* %12)
  %14 = call i32 @dev_err(%struct.device* %11, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i8* null, i8** %3, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %5, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrdup(i32* %18, i32 %19)
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @kstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
