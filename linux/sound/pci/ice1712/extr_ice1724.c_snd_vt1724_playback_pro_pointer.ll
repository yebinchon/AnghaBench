; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_pro_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_playback_pro_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.snd_ice1712 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DMA_CONTROL = common dso_local global i32 0, align 4
@VT1724_PDMA0_START = common dso_local global i32 0, align 4
@PLAYBACK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid ptr %d (size=%d)\0A\00", align 1
@PLAYBACK_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @snd_vt1724_playback_pro_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_vt1724_playback_pro_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ice1712* %7, %struct.snd_ice1712** %4, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = load i32, i32* @DMA_CONTROL, align 4
  %10 = call i32 @ICEMT1724(%struct.snd_ice1712* %8, i32 %9)
  %11 = call i32 @inl(i32 %10)
  %12 = load i32, i32* @VT1724_PDMA0_START, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %18 = load i32, i32* @PLAYBACK_SIZE, align 4
  %19 = call i32 @ICEMT1724(%struct.snd_ice1712* %17, i32 %18)
  %20 = call i32 @inl(i32 %19)
  %21 = and i32 %20, 16777215
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  %25 = shl i64 %24, 2
  store i64 %25, i64* %5, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @bytes_to_frames(%struct.TYPE_4__* %28, i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %66

34:                                               ; preds = %16
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ule i64 %35, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %5, align 8
  br label %65

50:                                               ; preds = %34
  %51 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %63)
  store i64 0, i64* %5, align 8
  br label %65

65:                                               ; preds = %50, %42
  br label %66

66:                                               ; preds = %65, %33
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local %struct.snd_ice1712* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
