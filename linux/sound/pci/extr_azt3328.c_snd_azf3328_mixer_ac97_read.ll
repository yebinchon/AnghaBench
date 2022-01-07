; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_mixer_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_mixer_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_azf3328* }
%struct.snd_azf3328 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"snd_azf3328_mixer_ac97_read reg_ac97 %u\0A\00", align 1
@AZF_AC97_REG_UNSUPPORTED = common dso_local global i16 0, align 2
@AZF_AC97_REG_REAL_IO_READ = common dso_local global i16 0, align 2
@AZF_REG_MASK = common dso_local global i16 0, align 2
@IDX_MIXER_SOMETHING30H = common dso_local global i16 0, align 2
@AZF_AC97_REG_EMU_IO_READ = common dso_local global i16 0, align 2
@azf_emulated_ac97_caps = common dso_local global i16 0, align 2
@azf_emulated_ac97_powerdown = common dso_local global i16 0, align 2
@azf_emulated_ac97_vendor_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_azf3328_mixer_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_azf3328_mixer_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.snd_azf3328*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 0
  %11 = load %struct.snd_azf3328*, %struct.snd_azf3328** %10, align 8
  store %struct.snd_azf3328* %11, %struct.snd_azf3328** %5, align 8
  %12 = load i16, i16* %4, align 2
  %13 = call zeroext i16 @snd_azf3328_mixer_ac97_map_reg_idx(i16 zeroext %12)
  store i16 %13, i16* %6, align 2
  store i16 0, i16* %7, align 2
  store i32 0, i32* %8, align 4
  %14 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %15 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i16, i16* %4, align 2
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i16 zeroext %19)
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @AZF_AC97_REG_UNSUPPORTED, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %87

28:                                               ; preds = %2
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @AZF_AC97_REG_REAL_IO_READ, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %37 = load i16, i16* %6, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @AZF_REG_MASK, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = trunc i32 %41 to i16
  %43 = call zeroext i16 @snd_azf3328_mixer_inw(%struct.snd_azf3328* %36, i16 zeroext %42)
  store i16 %43, i16* %7, align 2
  br label %48

44:                                               ; preds = %28
  %45 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %46 = load i16, i16* @IDX_MIXER_SOMETHING30H, align 2
  %47 = call zeroext i16 @snd_azf3328_mixer_inw(%struct.snd_azf3328* %45, i16 zeroext %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @AZF_AC97_REG_EMU_IO_READ, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %48
  %56 = load i16, i16* %4, align 2
  %57 = zext i16 %56 to i32
  switch i32 %57, label %84 [
    i32 130, label %58
    i32 131, label %65
    i32 133, label %72
    i32 132, label %72
    i32 129, label %76
    i32 128, label %80
  ]

58:                                               ; preds = %55
  %59 = load i16, i16* @azf_emulated_ac97_caps, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %7, align 2
  br label %85

65:                                               ; preds = %55
  %66 = load i16, i16* @azf_emulated_ac97_powerdown, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* %7, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 %69, %67
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %7, align 2
  br label %85

72:                                               ; preds = %55, %55
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %7, align 2
  br label %85

76:                                               ; preds = %55
  %77 = load i32, i32* @azf_emulated_ac97_vendor_id, align 4
  %78 = ashr i32 %77, 16
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %7, align 2
  br label %85

80:                                               ; preds = %55
  %81 = load i32, i32* @azf_emulated_ac97_vendor_id, align 4
  %82 = and i32 %81, 65535
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %7, align 2
  br label %85

84:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %80, %76, %72, %65, %58
  br label %86

86:                                               ; preds = %85, %48
  br label %87

87:                                               ; preds = %86, %27
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.snd_azf3328*, %struct.snd_azf3328** %5, align 8
  %92 = load i16, i16* %4, align 2
  %93 = call i32 @snd_azf3328_mixer_ac97_map_unsupported(%struct.snd_azf3328* %91, i16 zeroext %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i16, i16* %7, align 2
  ret i16 %95
}

declare dso_local zeroext i16 @snd_azf3328_mixer_ac97_map_reg_idx(i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 zeroext) #1

declare dso_local zeroext i16 @snd_azf3328_mixer_inw(%struct.snd_azf3328*, i16 zeroext) #1

declare dso_local i32 @snd_azf3328_mixer_ac97_map_unsupported(%struct.snd_azf3328*, i16 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
