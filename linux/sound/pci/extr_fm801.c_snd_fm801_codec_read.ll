; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16, i32, %struct.fm801* }
%struct.fm801 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"AC'97 interface is busy (1)\0A\00", align 1
@AC97_CMD = common dso_local global i32 0, align 4
@FM801_AC97_ADDR_SHIFT = common dso_local global i16 0, align 2
@FM801_AC97_READ = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [33 x i8] c"AC'97 interface #%d is busy (2)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"AC'97 interface #%d is not valid (2)\0A\00", align 1
@AC97_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_fm801_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_fm801_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.fm801*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 2
  %9 = load %struct.fm801*, %struct.fm801** %8, align 8
  store %struct.fm801* %9, %struct.fm801** %6, align 8
  %10 = load %struct.fm801*, %struct.fm801** %6, align 8
  %11 = call i32 @fm801_ac97_is_ready(%struct.fm801* %10, i32 100)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.fm801*, %struct.fm801** %6, align 8
  %15 = getelementptr inbounds %struct.fm801, %struct.fm801* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i16 0, i16* %3, align 2
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.fm801*, %struct.fm801** %6, align 8
  %22 = load i32, i32* @AC97_CMD, align 4
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @FM801_AC97_ADDR_SHIFT, align 2
  %30 = zext i16 %29 to i32
  %31 = shl i32 %28, %30
  %32 = or i32 %24, %31
  %33 = load i16, i16* @FM801_AC97_READ, align 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i16
  %37 = call i32 @fm801_writew(%struct.fm801* %21, i32 %22, i16 zeroext %36)
  %38 = load %struct.fm801*, %struct.fm801** %6, align 8
  %39 = call i32 @fm801_ac97_is_ready(%struct.fm801* %38, i32 100)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %20
  %42 = load %struct.fm801*, %struct.fm801** %6, align 8
  %43 = getelementptr inbounds %struct.fm801, %struct.fm801* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i16 0, i16* %3, align 2
  br label %69

51:                                               ; preds = %20
  %52 = load %struct.fm801*, %struct.fm801** %6, align 8
  %53 = call i32 @fm801_ac97_is_valid(%struct.fm801* %52, i32 1000)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load %struct.fm801*, %struct.fm801** %6, align 8
  %57 = getelementptr inbounds %struct.fm801, %struct.fm801* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i16 0, i16* %3, align 2
  br label %69

65:                                               ; preds = %51
  %66 = load %struct.fm801*, %struct.fm801** %6, align 8
  %67 = load i32, i32* @AC97_DATA, align 4
  %68 = call zeroext i16 @fm801_readw(%struct.fm801* %66, i32 %67)
  store i16 %68, i16* %3, align 2
  br label %69

69:                                               ; preds = %65, %55, %41, %13
  %70 = load i16, i16* %3, align 2
  ret i16 %70
}

declare dso_local i32 @fm801_ac97_is_ready(%struct.fm801*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fm801_writew(%struct.fm801*, i32, i16 zeroext) #1

declare dso_local i32 @fm801_ac97_is_valid(%struct.fm801*, i32) #1

declare dso_local zeroext i16 @fm801_readw(%struct.fm801*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
