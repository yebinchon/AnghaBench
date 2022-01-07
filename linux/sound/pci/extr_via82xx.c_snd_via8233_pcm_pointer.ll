; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.viadev* }
%struct.viadev = type { i32, i32, i32, i32, i64 }
%struct.via82xx = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OFFSET_CURR_COUNT = common dso_local global i32 0, align 4
@OFFSET_STATUS = common dso_local global i32 0, align 4
@VIA_REV_8251 = common dso_local global i64 0, align 8
@VIA_REG_STAT_EOL = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@VIA_REG_STAT_ACTIVE = common dso_local global i32 0, align 4
@VIA_REG_STAT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via8233_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.via82xx* %11, %struct.via82xx** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.viadev*, %struct.viadev** %15, align 8
  store %struct.viadev* %16, %struct.viadev** %5, align 8
  %17 = load %struct.viadev*, %struct.viadev** %5, align 8
  %18 = getelementptr inbounds %struct.viadev, %struct.viadev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

26:                                               ; preds = %1
  %27 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %28 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.viadev*, %struct.viadev** %5, align 8
  %31 = load i32, i32* @OFFSET_CURR_COUNT, align 4
  %32 = call i32 @VIADEV_REG(%struct.viadev* %30, i32 %31)
  %33 = call i32 @inl(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.viadev*, %struct.viadev** %5, align 8
  %35 = getelementptr inbounds %struct.viadev, %struct.viadev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load %struct.viadev*, %struct.viadev** %5, align 8
  %41 = load i32, i32* @OFFSET_STATUS, align 4
  %42 = call i32 @VIADEV_REG(%struct.viadev* %40, i32 %41)
  %43 = call i32 @inb(i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %26
  %45 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %46 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VIA_REV_8251, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @VIA_REG_STAT_EOL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %58 = call i32 @snd_via82xx_pcm_trigger(%struct.snd_pcm_substream* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %50, %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @VIA_REG_STAT_ACTIVE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %121

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 16777215
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = lshr i32 %70, 24
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.viadev*, %struct.viadev** %5, align 8
  %74 = getelementptr inbounds %struct.viadev, %struct.viadev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp uge i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.viadev*, %struct.viadev** %5, align 8
  %79 = getelementptr inbounds %struct.viadev, %struct.viadev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  br label %89

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 16777215
  store i32 %83, i32* %7, align 4
  %84 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %85 = load %struct.viadev*, %struct.viadev** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @calc_linear_pos(%struct.via82xx* %84, %struct.viadev* %85, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %81, %77
  br label %120

90:                                               ; preds = %65
  %91 = load %struct.viadev*, %struct.viadev** %5, align 8
  %92 = getelementptr inbounds %struct.viadev, %struct.viadev* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load %struct.viadev*, %struct.viadev** %5, align 8
  %95 = getelementptr inbounds %struct.viadev, %struct.viadev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @VIA_REG_STAT_EOL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %118

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @VIA_REG_STAT_FLAG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.viadev*, %struct.viadev** %5, align 8
  %111 = getelementptr inbounds %struct.viadev, %struct.viadev* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %109, %104
  br label %118

118:                                              ; preds = %117, %103
  br label %119

119:                                              ; preds = %118, %90
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120, %64
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.viadev*, %struct.viadev** %5, align 8
  %124 = getelementptr inbounds %struct.viadev, %struct.viadev* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %126 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %125, i32 0, i32 1
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @bytes_to_frames(%struct.TYPE_4__* %130, i32 %131)
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %121, %25
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @snd_via82xx_pcm_trigger(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @calc_linear_pos(%struct.via82xx*, %struct.viadev*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
