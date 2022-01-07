; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-mytek.c_snd_dice_detect_mytek_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-mytek.c_snd_dice_detect_mytek_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dice_mytek_spec = type { i32, i32 }
%struct.snd_dice = type { i64*, i64*, i32, i32 }

@stereo_192_dsd_dac = common dso_local global %struct.dice_mytek_spec zeroinitializer, align 4
@MAX_STREAMS = common dso_local global i32 0, align 4
@SND_DICE_RATE_MODE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_detect_mytek_formats(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dice_mytek_spec*, align 8
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  store %struct.dice_mytek_spec* @stereo_192_dsd_dac, %struct.dice_mytek_spec** %4, align 8
  %5 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dice_mytek_spec*, %struct.dice_mytek_spec** %4, align 8
  %9 = getelementptr inbounds %struct.dice_mytek_spec, %struct.dice_mytek_spec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAX_STREAMS, align 4
  %12 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memcpy(i32 %7, i32 %10, i32 %16)
  %18 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %19 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dice_mytek_spec*, %struct.dice_mytek_spec** %4, align 8
  %22 = getelementptr inbounds %struct.dice_mytek_spec, %struct.dice_mytek_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX_STREAMS, align 4
  %25 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memcpy(i32 %20, i32 %23, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %48, %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MAX_STREAMS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %37 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %43 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %31

51:                                               ; preds = %31
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
