; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_sound_oss.c_snd_oss_kernel_minor.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_sound_oss.c_snd_oss_kernel_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_MIXER1 = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_MIXER = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_SEQUENCER = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_MUSIC = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_PCM1 = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_PCM = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_MIDI1 = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_MIDI = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_DMFM = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_SNDSTAT = common dso_local global i32 0, align 4
@SNDRV_OSS_MINORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.snd_card*, i32)* @snd_oss_kernel_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_oss_kernel_minor(i32 %0, %struct.snd_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %112 [
    i32 132, label %10
    i32 129, label %40
    i32 131, label %42
    i32 130, label %44
    i32 133, label %74
    i32 134, label %104
    i32 128, label %110
  ]

10:                                               ; preds = %3
  %11 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 1
  br label %19

19:                                               ; preds = %16, %13, %10
  %20 = phi i1 [ true, %13 ], [ true, %10 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %127

27:                                               ; preds = %19
  %28 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SNDRV_MINOR_OSS_MIXER1, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @SNDRV_MINOR_OSS_MIXER, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @SNDRV_MINOR_OSS(i32 %30, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %115

40:                                               ; preds = %3
  %41 = load i32, i32* @SNDRV_MINOR_OSS_SEQUENCER, align 4
  store i32 %41, i32* %8, align 4
  br label %115

42:                                               ; preds = %3
  %43 = load i32, i32* @SNDRV_MINOR_OSS_MUSIC, align 4
  store i32 %43, i32* %8, align 4
  br label %115

44:                                               ; preds = %3
  %45 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %46 = icmp ne %struct.snd_card* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 1
  br label %53

53:                                               ; preds = %50, %47, %44
  %54 = phi i1 [ true, %47 ], [ true, %44 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @snd_BUG_ON(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %127

61:                                               ; preds = %53
  %62 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %63 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @SNDRV_MINOR_OSS_PCM1, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @SNDRV_MINOR_OSS_PCM, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @SNDRV_MINOR_OSS(i32 %64, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %115

74:                                               ; preds = %3
  %75 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %76 = icmp ne %struct.snd_card* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1
  br label %83

83:                                               ; preds = %80, %77, %74
  %84 = phi i1 [ true, %77 ], [ true, %74 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @snd_BUG_ON(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %127

91:                                               ; preds = %83
  %92 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %93 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @SNDRV_MINOR_OSS_MIDI1, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @SNDRV_MINOR_OSS_MIDI, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 @SNDRV_MINOR_OSS(i32 %94, i32 %102)
  store i32 %103, i32* %8, align 4
  br label %115

104:                                              ; preds = %3
  %105 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %106 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SNDRV_MINOR_OSS_DMFM, align 4
  %109 = call i32 @SNDRV_MINOR_OSS(i32 %107, i32 %108)
  store i32 %109, i32* %8, align 4
  br label %115

110:                                              ; preds = %3
  %111 = load i32, i32* @SNDRV_MINOR_OSS_SNDSTAT, align 4
  store i32 %111, i32* %8, align 4
  br label %115

112:                                              ; preds = %3
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %127

115:                                              ; preds = %110, %104, %101, %71, %42, %40, %37
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @SNDRV_OSS_MINORS, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %115
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %122, %112, %88, %58, %24
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @SNDRV_MINOR_OSS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
