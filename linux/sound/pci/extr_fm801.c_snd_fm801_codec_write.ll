; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16, i32, %struct.fm801* }
%struct.fm801 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"AC'97 interface is busy (1)\0A\00", align 1
@AC97_DATA = common dso_local global i32 0, align 4
@AC97_CMD = common dso_local global i32 0, align 4
@FM801_AC97_ADDR_SHIFT = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"AC'97 interface #%d is busy (2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_fm801_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_fm801_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.fm801*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 2
  %10 = load %struct.fm801*, %struct.fm801** %9, align 8
  store %struct.fm801* %10, %struct.fm801** %7, align 8
  %11 = load %struct.fm801*, %struct.fm801** %7, align 8
  %12 = call i32 @fm801_ac97_is_ready(%struct.fm801* %11, i32 100)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.fm801*, %struct.fm801** %7, align 8
  %16 = getelementptr inbounds %struct.fm801, %struct.fm801* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.fm801*, %struct.fm801** %7, align 8
  %23 = load i32, i32* @AC97_DATA, align 4
  %24 = load i16, i16* %6, align 2
  %25 = call i32 @fm801_writew(%struct.fm801* %22, i32 %23, i16 zeroext %24)
  %26 = load %struct.fm801*, %struct.fm801** %7, align 8
  %27 = load i32, i32* @AC97_CMD, align 4
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @FM801_AC97_ADDR_SHIFT, align 2
  %35 = zext i16 %34 to i32
  %36 = shl i32 %33, %35
  %37 = or i32 %29, %36
  %38 = trunc i32 %37 to i16
  %39 = call i32 @fm801_writew(%struct.fm801* %26, i32 %27, i16 zeroext %38)
  %40 = load %struct.fm801*, %struct.fm801** %7, align 8
  %41 = call i32 @fm801_ac97_is_ready(%struct.fm801* %40, i32 1000)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %21
  %44 = load %struct.fm801*, %struct.fm801** %7, align 8
  %45 = getelementptr inbounds %struct.fm801, %struct.fm801* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %14, %43, %21
  ret void
}

declare dso_local i32 @fm801_ac97_is_ready(%struct.fm801*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
