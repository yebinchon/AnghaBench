; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i64 }

@PCM_VOL = common dso_local global i32 0, align 4
@FM_VOL = common dso_local global i32 0, align 4
@I2S_VOL = common dso_local global i32 0, align 4
@I2S_MODE = common dso_local global i32 0, align 4
@IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@FM801_IRQ_PLAYBACK = common dso_local global i16 0, align 2
@FM801_IRQ_CAPTURE = common dso_local global i16 0, align 2
@FM801_IRQ_MPU = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm801*)* @snd_fm801_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_fm801_chip_init(%struct.fm801* %0) #0 {
  %2 = alloca %struct.fm801*, align 8
  %3 = alloca i16, align 2
  store %struct.fm801* %0, %struct.fm801** %2, align 8
  %4 = load %struct.fm801*, %struct.fm801** %2, align 8
  %5 = load i32, i32* @PCM_VOL, align 4
  %6 = call i32 @fm801_writew(%struct.fm801* %4, i32 %5, i16 zeroext 2056)
  %7 = load %struct.fm801*, %struct.fm801** %2, align 8
  %8 = load i32, i32* @FM_VOL, align 4
  %9 = call i32 @fm801_writew(%struct.fm801* %7, i32 %8, i16 zeroext -24801)
  %10 = load %struct.fm801*, %struct.fm801** %2, align 8
  %11 = load i32, i32* @I2S_VOL, align 4
  %12 = call i32 @fm801_writew(%struct.fm801* %10, i32 %11, i16 zeroext -30712)
  %13 = load %struct.fm801*, %struct.fm801** %2, align 8
  %14 = load i32, i32* @I2S_MODE, align 4
  %15 = call i32 @fm801_writew(%struct.fm801* %13, i32 %14, i16 zeroext 3)
  %16 = load %struct.fm801*, %struct.fm801** %2, align 8
  %17 = load i32, i32* @IRQ_MASK, align 4
  %18 = call zeroext i16 @fm801_readw(%struct.fm801* %16, i32 %17)
  store i16 %18, i16* %3, align 2
  %19 = load %struct.fm801*, %struct.fm801** %2, align 8
  %20 = getelementptr inbounds %struct.fm801, %struct.fm801* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, 195
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %3, align 2
  br label %33

28:                                               ; preds = %1
  %29 = load i16, i16* %3, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, -132
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %3, align 2
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.fm801*, %struct.fm801** %2, align 8
  %35 = load i32, i32* @IRQ_MASK, align 4
  %36 = load i16, i16* %3, align 2
  %37 = call i32 @fm801_writew(%struct.fm801* %34, i32 %35, i16 zeroext %36)
  %38 = load %struct.fm801*, %struct.fm801** %2, align 8
  %39 = load i32, i32* @IRQ_STATUS, align 4
  %40 = load i16, i16* @FM801_IRQ_PLAYBACK, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @FM801_IRQ_CAPTURE, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %41, %43
  %45 = load i16, i16* @FM801_IRQ_MPU, align 2
  %46 = zext i16 %45 to i32
  %47 = or i32 %44, %46
  %48 = trunc i32 %47 to i16
  %49 = call i32 @fm801_writew(%struct.fm801* %38, i32 %39, i16 zeroext %48)
  ret void
}

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @fm801_readw(%struct.fm801*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
