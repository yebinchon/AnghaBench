; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i32, i64, i64, i32, i32 }
%struct.snd_ymfpci = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ymfpci_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ymfpci*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ymfpci_pcm*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ymfpci* %9, %struct.snd_ymfpci** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 2
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 3
  %15 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %14, align 8
  store %struct.snd_ymfpci_pcm* %15, %struct.snd_ymfpci_pcm** %5, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %1
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @snd_ymfpci_pcm_init_voice(%struct.snd_ymfpci_pcm* %37, i32 %38, %struct.snd_pcm_runtime* %39, i32 %47)
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %30

52:                                               ; preds = %30
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %57 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %52
  %61 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %5, align 8
  %62 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %91, label %65

65:                                               ; preds = %60
  %66 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %67 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %73, align 8
  store %struct.snd_kcontrol* %74, %struct.snd_kcontrol** %6, align 8
  %75 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %78 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %76
  store i32 %83, i32* %81, align 4
  %84 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %3, align 8
  %85 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %88 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %89 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %88, i32 0, i32 0
  %90 = call i32 @snd_ctl_notify(i32 %86, i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %65, %60, %52
  ret i32 0
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ymfpci_pcm_init_voice(%struct.snd_ymfpci_pcm*, i32, %struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
