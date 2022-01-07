; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_mixer_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_mixer_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_azf3328* }
%struct.snd_azf3328 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"snd_azf3328_mixer_ac97_write reg_ac97 %u val %u\0A\00", align 1
@AZF_AC97_REG_UNSUPPORTED = common dso_local global i16 0, align 2
@AZF_AC97_REG_REAL_IO_WRITE = common dso_local global i16 0, align 2
@AZF_REG_MASK = common dso_local global i16 0, align 2
@AZF_AC97_REG_EMU_IO_WRITE = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_azf3328_mixer_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_mixer_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.snd_azf3328*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load %struct.snd_azf3328*, %struct.snd_azf3328** %11, align 8
  store %struct.snd_azf3328* %12, %struct.snd_azf3328** %7, align 8
  %13 = load i16, i16* %5, align 2
  %14 = call zeroext i16 @snd_azf3328_mixer_ac97_map_reg_idx(i16 zeroext %13)
  store i16 %14, i16* %8, align 2
  store i32 0, i32* %9, align 4
  %15 = load %struct.snd_azf3328*, %struct.snd_azf3328** %7, align 8
  %16 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i16, i16* %5, align 2
  %21 = load i16, i16* %6, align 2
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i16 zeroext %20, i16 zeroext %21)
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @AZF_AC97_REG_UNSUPPORTED, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %62

30:                                               ; preds = %3
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @AZF_AC97_REG_REAL_IO_WRITE, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.snd_azf3328*, %struct.snd_azf3328** %7, align 8
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @AZF_REG_MASK, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %40, %42
  %44 = trunc i32 %43 to i16
  %45 = load i16, i16* %6, align 2
  %46 = call i32 @snd_azf3328_mixer_outw(%struct.snd_azf3328* %38, i16 zeroext %44, i16 zeroext %45)
  br label %61

47:                                               ; preds = %30
  %48 = load i16, i16* %8, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @AZF_AC97_REG_EMU_IO_WRITE, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i16, i16* %5, align 2
  %56 = zext i16 %55 to i32
  switch i32 %56, label %58 [
    i32 128, label %57
    i32 129, label %57
    i32 130, label %57
  ]

57:                                               ; preds = %54, %54, %54
  br label %59

58:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %47
  br label %61

61:                                               ; preds = %60, %37
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.snd_azf3328*, %struct.snd_azf3328** %7, align 8
  %67 = load i16, i16* %5, align 2
  %68 = call i32 @snd_azf3328_mixer_ac97_map_unsupported(%struct.snd_azf3328* %66, i16 zeroext %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %62
  ret void
}

declare dso_local zeroext i16 @snd_azf3328_mixer_ac97_map_reg_idx(i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_azf3328_mixer_outw(%struct.snd_azf3328*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @snd_azf3328_mixer_ac97_map_unsupported(%struct.snd_azf3328*, i16 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
