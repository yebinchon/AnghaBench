; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-alesis.c_snd_dice_detect_alesis_formats.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-alesis.c_snd_dice_detect_alesis_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32**, i32*, i32*, i32 }

@TX_NUMBER_AUDIO = common dso_local global i32 0, align 4
@alesis_io14_tx_pcm_chs = common dso_local global i32 0, align 4
@MAX_STREAMS = common dso_local global i32 0, align 4
@SND_DICE_RATE_MODE_COUNT = common dso_local global i32 0, align 4
@alesis_io26_tx_pcm_chs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dice_detect_alesis_formats(%struct.snd_dice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %3, align 8
  %8 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %9 = load i32, i32* @TX_NUMBER_AUDIO, align 4
  %10 = call i32 @snd_dice_transaction_read_tx(%struct.snd_dice* %8, i32 %9, i32* %4, i32 4)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %35

23:                                               ; preds = %20, %15
  %24 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %25 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @alesis_io14_tx_pcm_chs, align 4
  %28 = load i32, i32* @MAX_STREAMS, align 4
  %29 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i32 %26, i32 %27, i32 %33)
  br label %47

35:                                               ; preds = %20
  %36 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %37 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @alesis_io26_tx_pcm_chs, align 4
  %40 = load i32, i32* @MAX_STREAMS, align 4
  %41 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i32 %38, i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %35, %23
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SND_DICE_RATE_MODE_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %54 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 8, i32* %60, align 4
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %66 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %70 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 1, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %64, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @snd_dice_transaction_read_tx(%struct.snd_dice*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
