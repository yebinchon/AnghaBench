; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_reset.c_snd_gf1_stop_voices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_reset.c_snd_gf1_stop_voices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SNDRV_GF1_MIN_OFFSET = common dso_local global i16 0, align 2
@SNDRV_GF1_VB_VOLUME_RATE = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_START = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_END = common dso_local global i32 0, align 4
@SNDRV_GF1_VB_VOLUME_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_gf1_stop_voices(%struct.snd_gus_card* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_gus_card*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %11 = call i32 (...) @in_interrupt()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %3
  %14 = load i16, i16* %5, align 2
  store i16 %14, i16* %8, align 2
  store i16 0, i16* %9, align 2
  br label %15

15:                                               ; preds = %74, %13
  %16 = load i16, i16* %8, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %15
  %22 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %23 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %27 = load i16, i16* %8, align 2
  %28 = call i32 @snd_gf1_select_voice(%struct.snd_gus_card* %26, i16 signext %27)
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %30 = call i32 @snd_gf1_read16(%struct.snd_gus_card* %29, i32 9)
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %10, align 2
  %33 = load i16, i16* %10, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* @SNDRV_GF1_MIN_OFFSET, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %21
  %39 = load i16, i16* %9, align 2
  %40 = add i16 %39, 1
  store i16 %40, i16* %9, align 2
  %41 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %42 = load i32, i32* @SNDRV_GF1_VB_VOLUME_RATE, align 4
  %43 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %41, i32 %42, i32 20)
  %44 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %45 = load i32, i32* @SNDRV_GF1_VB_VOLUME_START, align 4
  %46 = load i16, i16* @SNDRV_GF1_MIN_OFFSET, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %44, i32 %45, i32 %47)
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %50 = load i32, i32* @SNDRV_GF1_VB_VOLUME_END, align 4
  %51 = load i16, i16* %10, align 2
  %52 = zext i16 %51 to i32
  %53 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %49, i32 %50, i32 %52)
  %54 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %55 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %56 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %54, i32 %55, i32 64)
  %57 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %58 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %38
  %63 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %64 = call i32 @snd_gf1_delay(%struct.snd_gus_card* %63)
  %65 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %66 = load i32, i32* @SNDRV_GF1_VB_VOLUME_CONTROL, align 4
  %67 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %65, i32 %66, i32 64)
  br label %68

68:                                               ; preds = %62, %38
  br label %69

69:                                               ; preds = %68, %21
  %70 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %71 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %70, i32 0, i32 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69
  %75 = load i16, i16* %8, align 2
  %76 = add i16 %75, 1
  store i16 %76, i16* %8, align 2
  br label %15

77:                                               ; preds = %15
  %78 = call i32 @msleep_interruptible(i32 50)
  br label %79

79:                                               ; preds = %77, %3
  %80 = load %struct.snd_gus_card*, %struct.snd_gus_card** %4, align 8
  %81 = load i16, i16* %5, align 2
  %82 = load i16, i16* %6, align 2
  %83 = call i32 @snd_gf1_clear_voices(%struct.snd_gus_card* %80, i16 zeroext %81, i16 zeroext %82)
  ret void
}

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_gf1_select_voice(%struct.snd_gus_card*, i16 signext) #1

declare dso_local i32 @snd_gf1_read16(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_delay(%struct.snd_gus_card*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @snd_gf1_clear_voices(%struct.snd_gus_card*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
