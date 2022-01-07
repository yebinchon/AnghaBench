; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i32*, i32*, i32, i8*, i64, i32*, i64*, i64*, i64, i8*, i32, i32 }

@SPEAKER_OUT = common dso_local global i32 0, align 4
@DIGITAL_MIC = common dso_local global i8* null, align 8
@REAR_MIC = common dso_local global i8* null, align 8
@VNODES_COUNT = common dso_local global i32 0, align 4
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@EFFECT_LEVEL_SLIDERS = common dso_local global i32 0, align 4
@effect_slider_defaults = common dso_local global i32* null, align 8
@PLAY_ENHANCEMENT = common dso_local global i64 0, align 8
@EFFECT_START_NID = common dso_local global i64 0, align 8
@CRYSTAL_VOICE = common dso_local global i64 0, align 8
@QUIRK_ZXR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_init_chip(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %8, align 8
  store %struct.ca0132_spec* %9, %struct.ca0132_spec** %3, align 8
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %11 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %10, i32 0, i32 12
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i32, i32* @SPEAKER_OUT, align 4
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %17 = call i32 @ca0132_use_alt_functions(%struct.ca0132_spec* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i8*, i8** @DIGITAL_MIC, align 8
  %21 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %22 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %21, i32 0, i32 10
  store i8* %20, i8** %22, align 8
  br label %27

23:                                               ; preds = %1
  %24 = load i8*, i8** @REAR_MIC, align 8
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %29 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %28, i32 0, i32 9
  store i64 0, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %59, %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VNODES_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %36 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 90, i32* %40, align 4
  %41 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %42 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 90, i32* %46, align 4
  %47 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %48 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %47, i32 0, i32 8
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %54 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %53, i32 0, i32 7
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %34
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %30

62:                                               ; preds = %30
  %63 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %64 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %90, %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %85 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %70
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %66

93:                                               ; preds = %66
  %94 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %95 = call i64 @ca0132_use_alt_controls(%struct.ca0132_spec* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %99 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %98, i32 0, i32 3
  store i32 8, i32* %99, align 8
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %116, %97
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @EFFECT_LEVEL_SLIDERS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i32*, i32** @effect_slider_defaults, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %111 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %100

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %93
  %121 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %122 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %121, i32 0, i32 5
  store i64 0, i64* %122, align 8
  %123 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %124 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @PLAY_ENHANCEMENT, align 8
  %127 = load i64, i64* @EFFECT_START_NID, align 8
  %128 = sub i64 %126, %127
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 1, i32* %129, align 4
  %130 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %131 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @CRYSTAL_VOICE, align 8
  %134 = load i64, i64* @EFFECT_START_NID, align 8
  %135 = sub i64 %133, %134
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 0, i32* %136, align 4
  %137 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %138 = call i64 @ca0132_quirk(%struct.ca0132_spec* %137)
  %139 = load i64, i64* @QUIRK_ZXR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %120
  %142 = load i8*, i8** @REAR_MIC, align 8
  %143 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %144 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %120
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ca0132_use_alt_functions(%struct.ca0132_spec*) #1

declare dso_local i64 @ca0132_use_alt_controls(%struct.ca0132_spec*) #1

declare dso_local i64 @ca0132_quirk(%struct.ca0132_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
