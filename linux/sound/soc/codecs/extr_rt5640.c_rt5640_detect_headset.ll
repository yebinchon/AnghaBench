; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_detect_headset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_detect_headset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@JACK_DETECT_MAXCOUNT = common dso_local global i32 0, align 4
@JACK_SETTLE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"jack mic-gnd shorted\0A\00", align 1
@JACK_DETECT_COUNT = common dso_local global i32 0, align 4
@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"jack mic-gnd open\0A\00", align 1
@SND_JACK_HEADSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Error detecting headset vs headphones, bad contact?, assuming headphones\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt5640_detect_headset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_detect_headset(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @JACK_DETECT_MAXCOUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %7
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call i32 @rt5640_clear_micbias1_ovcd(%struct.snd_soc_component* %12)
  %14 = load i32, i32* @JACK_SETTLE_TIME, align 4
  %15 = call i32 @msleep(i32 %14)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %17 = call i32 @rt5640_jack_inserted(%struct.snd_soc_component* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %60

20:                                               ; preds = %11
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = call i64 @rt5640_micbias1_ovcd(%struct.snd_soc_component* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @JACK_DETECT_COUNT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %35, i32* %2, align 4
  br label %60

36:                                               ; preds = %24
  br label %50

37:                                               ; preds = %20
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @JACK_DETECT_COUNT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @SND_JACK_HEADSET, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %7

54:                                               ; preds = %7
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %56 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %47, %34, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @rt5640_clear_micbias1_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt5640_jack_inserted(%struct.snd_soc_component*) #1

declare dso_local i64 @rt5640_micbias1_ovcd(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
