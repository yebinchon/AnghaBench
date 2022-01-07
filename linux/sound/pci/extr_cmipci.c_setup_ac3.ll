; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_setup_ac3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_setup_ac3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i64 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_AC3EN1 = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_AC3EN2 = common dso_local global i32 0, align 4
@CM_SPD24SEL = common dso_local global i32 0, align 4
@CM_SPD32SEL = common dso_local global i32 0, align 4
@CM_PLAYBACK_SRATE_176K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*, %struct.snd_pcm_substream*, i32, i32)* @setup_ac3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ac3(%struct.cmipci* %0, %struct.snd_pcm_substream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cmipci*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %4
  %12 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %13 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %14 = load i32, i32* @CM_AC3EN1, align 4
  %15 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %12, i32 %13, i32 %14)
  %16 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %17 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %18 = load i32, i32* @CM_AC3EN2, align 4
  %19 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %16, i32 %17, i32 %18)
  %20 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %21 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %11
  %25 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %26 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %27 = load i32, i32* @CM_SPD24SEL, align 4
  %28 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %25, i32 %26, i32 %27)
  %29 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %30 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %31 = load i32, i32* @CM_SPD32SEL, align 4
  %32 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %29, i32 %30, i32 %31)
  br label %57

33:                                               ; preds = %11
  %34 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %35 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %36 = load i32, i32* @CM_SPD32SEL, align 4
  %37 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %34, i32 %35, i32 %36)
  %38 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %39 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 33
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 48000
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %47 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %48 = load i32, i32* @CM_PLAYBACK_SRATE_176K, align 4
  %49 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %46, i32 %47, i32 %48)
  br label %55

50:                                               ; preds = %42
  %51 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %52 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %53 = load i32, i32* @CM_PLAYBACK_SRATE_176K, align 4
  %54 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %24
  br label %112

58:                                               ; preds = %4
  %59 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %60 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %61 = load i32, i32* @CM_AC3EN1, align 4
  %62 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %59, i32 %60, i32 %61)
  %63 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %64 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %65 = load i32, i32* @CM_AC3EN2, align 4
  %66 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %63, i32 %64, i32 %65)
  %67 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %68 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %58
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @snd_pcm_format_width(i32 %76)
  %78 = icmp sgt i32 %77, 16
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %81 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %82 = load i32, i32* @CM_SPD32SEL, align 4
  %83 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %80, i32 %81, i32 %82)
  %84 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %85 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %86 = load i32, i32* @CM_SPD24SEL, align 4
  %87 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %84, i32 %85, i32 %86)
  br label %97

88:                                               ; preds = %71
  %89 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %90 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %91 = load i32, i32* @CM_SPD32SEL, align 4
  %92 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %89, i32 %90, i32 %91)
  %93 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %94 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %95 = load i32, i32* @CM_SPD24SEL, align 4
  %96 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %88, %79
  br label %111

98:                                               ; preds = %58
  %99 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %100 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %101 = load i32, i32* @CM_SPD32SEL, align 4
  %102 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %99, i32 %100, i32 %101)
  %103 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %104 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %105 = load i32, i32* @CM_SPD24SEL, align 4
  %106 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %103, i32 %104, i32 %105)
  %107 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %108 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %109 = load i32, i32* @CM_PLAYBACK_SRATE_176K, align 4
  %110 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %98, %97
  br label %112

112:                                              ; preds = %111, %57
  ret void
}

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
