; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cmute_new_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_cmute_new_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ac97 = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32 }

@AC97_MUTE_MASK_MONO = common dso_local global i16 0, align 2
@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@AC97_MUTE_MASK_STEREO = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_ac97*)* @snd_ac97_cmute_new_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_cmute_new_stereo(%struct.snd_card* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.snd_ac97* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ac97*, align 8
  %14 = alloca %struct.snd_kcontrol*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca %struct.snd_kcontrol_new, align 4
  %20 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_card* %0, %struct.snd_card** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_ac97* %5, %struct.snd_ac97** %13, align 8
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @snd_ac97_valid_reg(%struct.snd_ac97* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %121

26:                                               ; preds = %6
  %27 = load i16, i16* @AC97_MUTE_MASK_MONO, align 2
  store i16 %27, i16* %18, align 2
  %28 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %28, i32 %29)
  store i16 %30, i16* %16, align 2
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %35 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %33, %26
  %41 = load i16, i16* %16, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @AC97_MUTE_MASK_STEREO, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %17, align 2
  %47 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i16, i16* %17, align 2
  %50 = call i32 @snd_ac97_write(%struct.snd_ac97* %47, i32 %48, i16 zeroext %49)
  %51 = load i16, i16* %17, align 2
  %52 = zext i16 %51 to i32
  %53 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %53, i32 %54)
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i16, i16* @AC97_MUTE_MASK_STEREO, align 2
  store i16 %59, i16* %18, align 2
  br label %60

60:                                               ; preds = %58, %40
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i16, i16* %18, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @AC97_MUTE_MASK_STEREO, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @AC97_DOUBLE(i8* %68, i32 %69, i32 15, i32 7, i32 1, i32 1)
  %71 = bitcast %struct.snd_kcontrol_new* %19 to i64*
  store i64 %70, i64* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, 1073741824
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %80 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %84 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %19, %struct.snd_ac97* %83)
  store %struct.snd_kcontrol* %84, %struct.snd_kcontrol** %14, align 8
  br label %103

85:                                               ; preds = %61
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @AC97_SINGLE(i8* %86, i32 %87, i32 15, i32 1, i32 1)
  %89 = bitcast %struct.snd_kcontrol_new* %20 to i64*
  store i64 %88, i64* %89, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 1073741824
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %98 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %102 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %20, %struct.snd_ac97* %101)
  store %struct.snd_kcontrol* %102, %struct.snd_kcontrol** %14, align 8
  br label %103

103:                                              ; preds = %96, %78
  %104 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %105 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %14, align 8
  %106 = call i32 @snd_ctl_add(%struct.snd_card* %104, %struct.snd_kcontrol* %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %7, align 4
  br label %121

111:                                              ; preds = %103
  %112 = load %struct.snd_ac97*, %struct.snd_ac97** %13, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i16, i16* %16, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16, i16* %18, align 2
  %117 = zext i16 %116 to i32
  %118 = or i32 %115, %117
  %119 = trunc i32 %118 to i16
  %120 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %112, i32 %113, i16 zeroext %119)
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %111, %109, %25
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @snd_ac97_valid_reg(%struct.snd_ac97*, i32) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i32, i16 zeroext) #1

declare dso_local i64 @AC97_DOUBLE(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ac97*) #1

declare dso_local i64 @AC97_SINGLE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
