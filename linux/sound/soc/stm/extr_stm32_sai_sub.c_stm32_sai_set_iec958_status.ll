; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_iec958_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_iec958_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_sub_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.snd_pcm_runtime = type { i32 }

@IEC958_AES3_CON_FS_22050 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_44100 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_88200 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_176400 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_24000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_48000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_96000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_192000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_32000 = common dso_local global i32 0, align 4
@IEC958_AES3_CON_FS_NOTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_sai_sub_data*, %struct.snd_pcm_runtime*)* @stm32_sai_set_iec958_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_sai_set_iec958_status(%struct.stm32_sai_sub_data* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.stm32_sai_sub_data*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.stm32_sai_sub_data* %0, %struct.stm32_sai_sub_data** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %5 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %6 = icmp ne %struct.snd_pcm_runtime* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %89

8:                                                ; preds = %2
  %9 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %78 [
    i32 22050, label %15
    i32 44100, label %22
    i32 88200, label %29
    i32 176400, label %36
    i32 24000, label %43
    i32 48000, label %50
    i32 96000, label %57
    i32 192000, label %64
    i32 32000, label %71
  ]

15:                                               ; preds = %8
  %16 = load i32, i32* @IEC958_AES3_CON_FS_22050, align 4
  %17 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %16, i32* %21, align 4
  br label %85

22:                                               ; preds = %8
  %23 = load i32, i32* @IEC958_AES3_CON_FS_44100, align 4
  %24 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %25 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %23, i32* %28, align 4
  br label %85

29:                                               ; preds = %8
  %30 = load i32, i32* @IEC958_AES3_CON_FS_88200, align 4
  %31 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %32 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 3
  store i32 %30, i32* %35, align 4
  br label %85

36:                                               ; preds = %8
  %37 = load i32, i32* @IEC958_AES3_CON_FS_176400, align 4
  %38 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %39 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %37, i32* %42, align 4
  br label %85

43:                                               ; preds = %8
  %44 = load i32, i32* @IEC958_AES3_CON_FS_24000, align 4
  %45 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %46 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %44, i32* %49, align 4
  br label %85

50:                                               ; preds = %8
  %51 = load i32, i32* @IEC958_AES3_CON_FS_48000, align 4
  %52 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %53 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %51, i32* %56, align 4
  br label %85

57:                                               ; preds = %8
  %58 = load i32, i32* @IEC958_AES3_CON_FS_96000, align 4
  %59 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %58, i32* %63, align 4
  br label %85

64:                                               ; preds = %8
  %65 = load i32, i32* @IEC958_AES3_CON_FS_192000, align 4
  %66 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %67 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %65, i32* %70, align 4
  br label %85

71:                                               ; preds = %8
  %72 = load i32, i32* @IEC958_AES3_CON_FS_32000, align 4
  %73 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %74 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 %72, i32* %77, align 4
  br label %85

78:                                               ; preds = %8
  %79 = load i32, i32* @IEC958_AES3_CON_FS_NOTID, align 4
  %80 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %81 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %71, %64, %57, %50, %43, %36, %29, %22, %15
  %86 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %87 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %85, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
