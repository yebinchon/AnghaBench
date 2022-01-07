; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.viadev* }
%struct.viadev = type { i32 }
%struct.via82xx_modem = type { i32 }

@VIA_REG_CTRL_START = common dso_local global i8 0, align 1
@VIA_REG_CTRL_TERMINATE = common dso_local global i8 0, align 1
@VIA_REG_CTRL_PAUSE = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@OFFSET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_via82xx_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.via82xx_modem*, align 8
  %7 = alloca %struct.viadev*, align 8
  %8 = alloca i8, align 1
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.via82xx_modem* %10, %struct.via82xx_modem** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.viadev*, %struct.viadev** %14, align 8
  store %struct.viadev* %15, %struct.viadev** %7, align 8
  store i8 0, i8* %8, align 1
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %42 [
    i32 130, label %17
    i32 128, label %17
    i32 129, label %26
    i32 132, label %30
    i32 131, label %39
  ]

17:                                               ; preds = %2, %2
  %18 = load i8, i8* @VIA_REG_CTRL_START, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  %24 = load %struct.viadev*, %struct.viadev** %7, align 8
  %25 = getelementptr inbounds %struct.viadev, %struct.viadev* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %45

26:                                               ; preds = %2
  %27 = load i8, i8* @VIA_REG_CTRL_TERMINATE, align 1
  store i8 %27, i8* %8, align 1
  %28 = load %struct.viadev*, %struct.viadev** %7, align 8
  %29 = getelementptr inbounds %struct.viadev, %struct.viadev* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %45

30:                                               ; preds = %2
  %31 = load i8, i8* @VIA_REG_CTRL_PAUSE, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %8, align 1
  %37 = load %struct.viadev*, %struct.viadev** %7, align 8
  %38 = getelementptr inbounds %struct.viadev, %struct.viadev* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %45

39:                                               ; preds = %2
  %40 = load %struct.viadev*, %struct.viadev** %7, align 8
  %41 = getelementptr inbounds %struct.viadev, %struct.viadev* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %39, %30, %26, %17
  %46 = load i8, i8* %8, align 1
  %47 = load %struct.viadev*, %struct.viadev** %7, align 8
  %48 = load i32, i32* @OFFSET_CONTROL, align 4
  %49 = call i32 @VIADEV_REG(%struct.viadev* %47, i32 %48)
  %50 = call i32 @outb(i8 zeroext %46, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %55 = load %struct.viadev*, %struct.viadev** %7, align 8
  %56 = call i32 @snd_via82xx_channel_reset(%struct.via82xx_modem* %54, %struct.viadev* %55)
  br label %57

57:                                               ; preds = %53, %45
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx_modem*, %struct.viadev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
