; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_codec_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via82xx_codec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.via82xx_modem* }
%struct.via82xx_modem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIA_REG_AC97_CODEC_ID_SHIFT = common dso_local global i32 0, align 4
@VIA_REG_AC97_SECONDARY_VALID = common dso_local global i32 0, align 4
@VIA_REG_AC97_PRIMARY_VALID = common dso_local global i32 0, align 4
@VIA_REG_AC97_READ = common dso_local global i32 0, align 4
@VIA_REG_AC97_CMD_SHIFT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [42 x i8] c"codec_read: codec %i is not valid [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_via82xx_codec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_via82xx_codec_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.via82xx_modem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = load %struct.via82xx_modem*, %struct.via82xx_modem** %11, align 8
  store %struct.via82xx_modem* %12, %struct.via82xx_modem** %6, align 8
  store i32 65535, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @VIA_REG_AC97_SECONDARY_VALID, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @VIA_REG_AC97_PRIMARY_VALID, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @VIA_REG_AC97_READ, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 127
  %36 = load i16, i16* @VIA_REG_AC97_CMD_SHIFT, align 2
  %37 = zext i16 %36 to i32
  %38 = shl i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %26, %72
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = icmp sgt i32 %42, 3
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %47 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %55 = call i32 @snd_via82xx_codec_xread(%struct.via82xx_modem* %54)
  %56 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55)
  store i16 -1, i16* %3, align 2
  br label %77

57:                                               ; preds = %41
  %58 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem* %58, i32 %59)
  %61 = call i32 @udelay(i32 20)
  %62 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %63 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @snd_via82xx_codec_valid(%struct.via82xx_modem* %62, i32 %65)
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = call i32 @udelay(i32 25)
  %70 = load %struct.via82xx_modem*, %struct.via82xx_modem** %6, align 8
  %71 = call i32 @snd_via82xx_codec_xread(%struct.via82xx_modem* %70)
  store i32 %71, i32* %8, align 4
  br label %73

72:                                               ; preds = %57
  br label %41

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 65535
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %3, align 2
  br label %77

77:                                               ; preds = %73, %45
  %78 = load i16, i16* %3, align 2
  ret i16 %78
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_via82xx_codec_xread(%struct.via82xx_modem*) #1

declare dso_local i32 @snd_via82xx_codec_xwrite(%struct.via82xx_modem*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @snd_via82xx_codec_valid(%struct.via82xx_modem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
