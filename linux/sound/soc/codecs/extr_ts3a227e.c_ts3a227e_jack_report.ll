; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_jack_report.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ts3a227e.c_ts3a227e_jack_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts3a227e = type { i32, i32, i64, i64 }

@SND_JACK_HEADPHONE = common dso_local global i32 0, align 4
@SND_JACK_MICROPHONE = common dso_local global i32 0, align 4
@TS3A227E_NUM_BUTTONS = common dso_local global i32 0, align 4
@ts3a227e_buttons = common dso_local global i32* null, align 8
@TS3A227E_JACK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ts3a227e*)* @ts3a227e_jack_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts3a227e_jack_report(%struct.ts3a227e* %0) #0 {
  %2 = alloca %struct.ts3a227e*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ts3a227e* %0, %struct.ts3a227e** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ts3a227e*, %struct.ts3a227e** %2, align 8
  %6 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.ts3a227e*, %struct.ts3a227e** %2, align 8
  %12 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @SND_JACK_HEADPHONE, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %struct.ts3a227e*, %struct.ts3a227e** %2, align 8
  %19 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @SND_JACK_MICROPHONE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TS3A227E_NUM_BUTTONS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load %struct.ts3a227e*, %struct.ts3a227e** %2, align 8
  %33 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32*, i32** @ts3a227e_buttons, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %39, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.ts3a227e*, %struct.ts3a227e** %2, align 8
  %53 = getelementptr inbounds %struct.ts3a227e, %struct.ts3a227e* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TS3A227E_JACK_MASK, align 4
  %57 = call i32 @snd_soc_jack_report(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %9
  ret void
}

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
