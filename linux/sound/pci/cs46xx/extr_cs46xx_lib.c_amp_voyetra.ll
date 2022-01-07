; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_amp_voyetra.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_amp_voyetra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AC97_POWERDOWN = common dso_local global i32 0, align 4
@CS46XX_PRIMARY_CODEC_INDEX = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, i32)* @amp_voyetra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amp_voyetra(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %13 = load i32, i32* @AC97_POWERDOWN, align 4
  %14 = load i32, i32* @CS46XX_PRIMARY_CODEC_INDEX, align 4
  %15 = call i32 @snd_cs46xx_codec_read(%struct.snd_cs46xx* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %18 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 32768
  store i32 %23, i32* %6, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, -32769
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %33 = load i32, i32* @AC97_POWERDOWN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CS46XX_PRIMARY_CODEC_INDEX, align 4
  %36 = call i32 @snd_cs46xx_codec_write(%struct.snd_cs46xx* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %38 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %31
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %43 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %46 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %47 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @snd_ctl_notify(i32 %44, i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %41, %31
  br label %52

52:                                               ; preds = %51, %27
  ret void
}

declare dso_local i32 @snd_cs46xx_codec_read(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @snd_cs46xx_codec_write(%struct.snd_cs46xx*, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
