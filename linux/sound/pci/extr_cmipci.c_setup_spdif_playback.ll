; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_setup_spdif_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_setup_spdif_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32, i64 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_PLAYBACK_SPDF = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_SPDIF48K = common dso_local global i32 0, align 4
@CM_SPDF_AC97 = common dso_local global i32 0, align 4
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_DBLSPDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, %struct.snd_pcm_substream*, i32, i32)* @setup_spdif_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_spdif_playback(%struct.cmipci* %0, %struct.snd_pcm_substream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmipci*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %6, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %24 = call i32 @save_mixer_state(%struct.cmipci* %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %103

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %19, %4
  %30 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %31 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %35 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %87

38:                                               ; preds = %29
  %39 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %40 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %45 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %46 = load i32, i32* @CM_PLAYBACK_SPDF, align 4
  %47 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @setup_ac3(%struct.cmipci* %49, %struct.snd_pcm_substream* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 48000
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 96000
  br i1 %58, label %59, label %66

59:                                               ; preds = %56, %48
  %60 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %61 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %62 = load i32, i32* @CM_SPDIF48K, align 4
  %63 = load i32, i32* @CM_SPDF_AC97, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %60, i32 %61, i32 %64)
  br label %73

66:                                               ; preds = %56
  %67 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %68 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %69 = load i32, i32* @CM_SPDIF48K, align 4
  %70 = load i32, i32* @CM_SPDF_AC97, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %67, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %59
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 48000
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %78 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %79 = load i32, i32* @CM_DBLSPDS, align 4
  %80 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %77, i32 %78, i32 %79)
  br label %86

81:                                               ; preds = %73
  %82 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %83 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %84 = load i32, i32* @CM_DBLSPDS, align 4
  %85 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  br label %99

87:                                               ; preds = %29
  %88 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %89 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %90 = load i32, i32* @CM_DBLSPDS, align 4
  %91 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %88, i32 %89, i32 %90)
  %92 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %93 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %94 = load i32, i32* @CM_PLAYBACK_SPDF, align 4
  %95 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %92, i32 %93, i32 %94)
  %96 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %98 = call i32 @setup_ac3(%struct.cmipci* %96, %struct.snd_pcm_substream* %97, i32 0, i32 0)
  br label %99

99:                                               ; preds = %87, %86
  %100 = load %struct.cmipci*, %struct.cmipci** %6, align 8
  %101 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock_irq(i32* %101)
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %26
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @save_mixer_state(%struct.cmipci*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @setup_ac3(%struct.cmipci*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
