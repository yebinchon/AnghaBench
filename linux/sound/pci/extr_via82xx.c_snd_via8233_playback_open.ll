; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.via82xx = type { i64, %struct.TYPE_4__**, i32, i8***, %struct.viadev* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.viadev = type { i32 }

@VIA_DXS_MAX_VOLUME = common dso_local global i8* null, align 8
@dxs_init_volume = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via8233_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.via82xx* %9, %struct.via82xx** %4, align 8
  %10 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %11 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %10, i32 0, i32 4
  %12 = load %struct.viadev*, %struct.viadev** %11, align 8
  %13 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %14 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = getelementptr inbounds %struct.viadev, %struct.viadev* %12, i64 %19
  store %struct.viadev* %20, %struct.viadev** %5, align 8
  %21 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %22 = load %struct.viadev*, %struct.viadev** %5, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = call i32 @snd_via82xx_pcm_open(%struct.via82xx* %21, %struct.viadev* %22, %struct.snd_pcm_substream* %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %101

28:                                               ; preds = %1
  %29 = load %struct.viadev*, %struct.viadev** %5, align 8
  %30 = getelementptr inbounds %struct.viadev, %struct.viadev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 16
  store i32 %32, i32* %6, align 4
  %33 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %34 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %100

41:                                               ; preds = %28
  %42 = load i8*, i8** @VIA_DXS_MAX_VOLUME, align 8
  %43 = load i32, i32* @dxs_init_volume, align 4
  %44 = and i32 %43, 31
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr i8, i8* %42, i64 %46
  %48 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %49 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %48, i32 0, i32 3
  %50 = load i8***, i8**** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8**, i8*** %50, i64 %52
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %47, i8** %55, align 8
  %56 = load i8*, i8** @VIA_DXS_MAX_VOLUME, align 8
  %57 = load i32, i32* @dxs_init_volume, align 4
  %58 = and i32 %57, 31
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %63 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %62, i32 0, i32 3
  %64 = load i8***, i8**** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8**, i8*** %64, i64 %66
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* %61, i8** %69, align 8
  %70 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %73 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %71
  store i32 %84, i32* %82, align 4
  %85 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %86 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %89 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %92 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @snd_ctl_notify(i32 %87, i32 %90, i32* %98)
  br label %100

100:                                              ; preds = %41, %28
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %26
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_via82xx_pcm_open(%struct.via82xx*, %struct.viadev*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
