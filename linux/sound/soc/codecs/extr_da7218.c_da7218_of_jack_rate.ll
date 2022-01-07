; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_of_jack_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_of_jack_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DA7218_HPLDET_JACK_RATE_5US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_10US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_20US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_40US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_80US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_160US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_320US = common dso_local global i32 0, align 4
@DA7218_HPLDET_JACK_RATE_640US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid jack detect rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @da7218_of_jack_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7218_of_jack_rate(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 5, label %7
    i32 10, label %9
    i32 20, label %11
    i32 40, label %13
    i32 80, label %15
    i32 160, label %17
    i32 320, label %19
    i32 640, label %21
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @DA7218_HPLDET_JACK_RATE_5US, align 4
  store i32 %8, i32* %3, align 4
  br label %29

9:                                                ; preds = %2
  %10 = load i32, i32* @DA7218_HPLDET_JACK_RATE_10US, align 4
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* @DA7218_HPLDET_JACK_RATE_20US, align 4
  store i32 %12, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @DA7218_HPLDET_JACK_RATE_40US, align 4
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i32, i32* @DA7218_HPLDET_JACK_RATE_80US, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* @DA7218_HPLDET_JACK_RATE_160US, align 4
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load i32, i32* @DA7218_HPLDET_JACK_RATE_320US, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @DA7218_HPLDET_JACK_RATE_640US, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @DA7218_HPLDET_JACK_RATE_40US, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
