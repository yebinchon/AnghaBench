; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_cs46xx_detect_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_cs46xx_detect_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i64, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ac97_template = type { i32, i32, i32, %struct.snd_cs46xx* }

@snd_cs46xx_mixer_free_ac97 = common dso_local global i32 0, align 4
@amp_voyetra = common dso_local global i64 0, align 8
@AC97_SCAP_INV_EAPD = common dso_local global i32 0, align 4
@CS46XX_SECONDARY_CODEC_INDEX = common dso_local global i32 0, align 4
@AC97_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"secondary codec not present\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AC97_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"codec %d detection timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*, i32)* @cs46xx_detect_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs46xx_detect_codec(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_ac97_template, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @memset(%struct.snd_ac97_template* %8, i32 0, i32 24)
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %8, i32 0, i32 3
  store %struct.snd_cs46xx* %10, %struct.snd_cs46xx** %11, align 8
  %12 = load i32, i32* @snd_cs46xx_mixer_free_ac97, align 4
  %13 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %8, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %17 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @amp_voyetra, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @AC97_SCAP_INV_EAPD, align 4
  %23 = getelementptr inbounds %struct.snd_ac97_template, %struct.snd_ac97_template* %8, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CS46XX_SECONDARY_CODEC_INDEX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %30 = load i32, i32* @AC97_RESET, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @snd_cs46xx_codec_write(%struct.snd_cs46xx* %29, i32 %30, i32 0, i32 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %35 = load i32, i32* @AC97_RESET, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @snd_cs46xx_codec_read(%struct.snd_cs46xx* %34, i32 %35, i32 %36)
  %38 = and i32 %37, 32768
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  %41 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %42 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %52 = load i32, i32* @AC97_MASTER, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @snd_cs46xx_codec_write(%struct.snd_cs46xx* %51, i32 %52, i32 32768, i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %78, %50
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 100
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %60 = load i32, i32* @AC97_MASTER, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @snd_cs46xx_codec_read(%struct.snd_cs46xx* %59, i32 %60, i32 %61)
  %63 = icmp eq i32 %62, 32768
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %66 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %69 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @snd_ac97_mixer(i32 %67, %struct.snd_ac97_template* %8, i32* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %91

76:                                               ; preds = %58
  %77 = call i32 @msleep(i32 10)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %55

81:                                               ; preds = %55
  %82 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %83 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, ...) @dev_dbg(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %64, %40
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.snd_ac97_template*, i32, i32) #1

declare dso_local i32 @snd_cs46xx_codec_write(%struct.snd_cs46xx*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_cs46xx_codec_read(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_ac97_mixer(i32, %struct.snd_ac97_template*, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
