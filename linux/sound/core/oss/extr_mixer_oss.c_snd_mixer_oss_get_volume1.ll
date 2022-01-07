; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_volume1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { i32 }
%struct.snd_mixer_oss_slot = type { %struct.slot* }
%struct.slot = type { i32, i32* }

@SNDRV_MIXER_OSS_PRESENT_PVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GVOLUME = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GVOLUME = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GLOBAL = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GLOBAL = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GSWITCH = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GSWITCH = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_PROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_PROUTE = common dso_local global i64 0, align 8
@SNDRV_MIXER_OSS_PRESENT_GROUTE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_ITEM_GROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32*, i32*)* @snd_mixer_oss_get_volume1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_get_volume1(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.snd_mixer_oss_file*, align 8
  %6 = alloca %struct.snd_mixer_oss_slot*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.slot*, align 8
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %5, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %11 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %10, i32 0, i32 0
  %12 = load %struct.slot*, %struct.slot** %11, align 8
  store %struct.slot* %12, %struct.slot** %9, align 8
  %13 = load i32*, i32** %8, align 8
  store i32 100, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 100, i32* %14, align 4
  %15 = load %struct.slot*, %struct.slot** %9, align 8
  %16 = getelementptr inbounds %struct.slot, %struct.slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PVOLUME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %23 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %24 = load %struct.slot*, %struct.slot** %9, align 8
  %25 = getelementptr inbounds %struct.slot, %struct.slot* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PVOLUME, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %22, %struct.snd_mixer_oss_slot* %23, i32 %29, i32* %30, i32* %31)
  br label %73

33:                                               ; preds = %4
  %34 = load %struct.slot*, %struct.slot** %9, align 8
  %35 = getelementptr inbounds %struct.slot, %struct.slot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GVOLUME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %42 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %43 = load %struct.slot*, %struct.slot** %9, align 8
  %44 = getelementptr inbounds %struct.slot, %struct.slot* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GVOLUME, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %41, %struct.snd_mixer_oss_slot* %42, i32 %48, i32* %49, i32* %50)
  br label %72

52:                                               ; preds = %33
  %53 = load %struct.slot*, %struct.slot** %9, align 8
  %54 = getelementptr inbounds %struct.slot, %struct.slot* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GLOBAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %61 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %62 = load %struct.slot*, %struct.slot** %9, align 8
  %63 = getelementptr inbounds %struct.slot, %struct.slot* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GLOBAL, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file* %60, %struct.snd_mixer_oss_slot* %61, i32 %67, i32* %68, i32* %69)
  br label %71

71:                                               ; preds = %59, %52
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72, %21
  %74 = load %struct.slot*, %struct.slot** %9, align 8
  %75 = getelementptr inbounds %struct.slot, %struct.slot* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PSWITCH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %82 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %83 = load %struct.slot*, %struct.slot** %9, align 8
  %84 = getelementptr inbounds %struct.slot, %struct.slot* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PSWITCH, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %81, %struct.snd_mixer_oss_slot* %82, i32 %88, i32* %89, i32* %90, i32 0)
  br label %152

92:                                               ; preds = %73
  %93 = load %struct.slot*, %struct.slot** %9, align 8
  %94 = getelementptr inbounds %struct.slot, %struct.slot* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GSWITCH, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %101 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %102 = load %struct.slot*, %struct.slot** %9, align 8
  %103 = getelementptr inbounds %struct.slot, %struct.slot* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GSWITCH, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %100, %struct.snd_mixer_oss_slot* %101, i32 %107, i32* %108, i32* %109, i32 0)
  br label %151

111:                                              ; preds = %92
  %112 = load %struct.slot*, %struct.slot** %9, align 8
  %113 = getelementptr inbounds %struct.slot, %struct.slot* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_PROUTE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %111
  %119 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %120 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %121 = load %struct.slot*, %struct.slot** %9, align 8
  %122 = getelementptr inbounds %struct.slot, %struct.slot* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_PROUTE, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %119, %struct.snd_mixer_oss_slot* %120, i32 %126, i32* %127, i32* %128, i32 1)
  br label %150

130:                                              ; preds = %111
  %131 = load %struct.slot*, %struct.slot** %9, align 8
  %132 = getelementptr inbounds %struct.slot, %struct.slot* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_GROUTE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %130
  %138 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %5, align 8
  %139 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %6, align 8
  %140 = load %struct.slot*, %struct.slot** %9, align 8
  %141 = getelementptr inbounds %struct.slot, %struct.slot* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_GROUTE, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %138, %struct.snd_mixer_oss_slot* %139, i32 %145, i32* %146, i32* %147, i32 1)
  br label %149

149:                                              ; preds = %137, %130
  br label %150

150:                                              ; preds = %149, %118
  br label %151

151:                                              ; preds = %150, %99
  br label %152

152:                                              ; preds = %151, %80
  ret i32 0
}

declare dso_local i32 @snd_mixer_oss_get_volume1_vol(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*) #1

declare dso_local i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
