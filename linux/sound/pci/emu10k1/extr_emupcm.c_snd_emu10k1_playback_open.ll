; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { %struct.snd_pcm_substream*, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { %struct.snd_emu10k1_pcm_mixer*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.snd_emu10k1_pcm_mixer = type { i32**, i32**, i32*, %struct.snd_emu10k1_pcm* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLAYBACK_EMUVOICE = common dso_local global i32 0, align 4
@snd_emu10k1_pcm_free_substream = common dso_local global i32 0, align 4
@snd_emu10k1_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca %struct.snd_emu10k1_pcm_mixer*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_emu10k1* %12, %struct.snd_emu10k1** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.snd_emu10k1_pcm* @kzalloc(i32 24, i32 %16)
  store %struct.snd_emu10k1_pcm* %17, %struct.snd_emu10k1_pcm** %5, align 8
  %18 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %19 = icmp eq %struct.snd_emu10k1_pcm* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %173

23:                                               ; preds = %1
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %25 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %25, i32 0, i32 2
  store %struct.snd_emu10k1* %24, %struct.snd_emu10k1** %26, align 8
  %27 = load i32, i32* @PLAYBACK_EMUVOICE, align 4
  %28 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %32 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %31, i32 0, i32 0
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %32, align 8
  %33 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 2
  store %struct.snd_emu10k1_pcm* %33, %struct.snd_emu10k1_pcm** %35, align 8
  %36 = load i32, i32* @snd_emu10k1_pcm_free_substream, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @snd_emu10k1_playback, align 4
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %44 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %48 = call i32 @kfree(%struct.snd_emu10k1_pcm* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %173

50:                                               ; preds = %23
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %52 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %53 = load i32, i32* @UINT_MAX, align 4
  %54 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %51, i32 %52, i32 256, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %58 = call i32 @kfree(%struct.snd_emu10k1_pcm* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %2, align 4
  br label %173

60:                                               ; preds = %50
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 44100, i32* %10, align 4
  br label %75

74:                                               ; preds = %67, %60
  store i32 48000, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %83 = call i32 @kfree(%struct.snd_emu10k1_pcm* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %173

85:                                               ; preds = %75
  %86 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %86, i32 0, i32 0
  %88 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %87, align 8
  %89 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %88, i64 %91
  store %struct.snd_emu10k1_pcm_mixer* %92, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %122, %85
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %99 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %97, i32* %105, align 4
  %106 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %97, i32* %113, align 4
  %114 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %115 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %97, i32* %121, align 4
  br label %122

122:                                              ; preds = %96
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %93

125:                                              ; preds = %93
  %126 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %127 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %126, i32 0, i32 1
  %128 = call i32 @memset(i32*** %127, i32 0, i32 8)
  %129 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %130 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %129, i32 0, i32 1
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 255, i32* %134, align 4
  %135 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %136 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 255, i32* %140, align 4
  %141 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %142 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %141, i32 0, i32 1
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 255, i32* %146, align 4
  %147 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %148 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %147, i32 0, i32 1
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 255, i32* %152, align 4
  %153 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %154 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32 65535, i32* %156, align 4
  %157 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %158 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 65535, i32* %160, align 4
  %161 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %162 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 65535, i32* %164, align 4
  %165 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %166 = load %struct.snd_emu10k1_pcm_mixer*, %struct.snd_emu10k1_pcm_mixer** %6, align 8
  %167 = getelementptr inbounds %struct.snd_emu10k1_pcm_mixer, %struct.snd_emu10k1_pcm_mixer* %166, i32 0, i32 3
  store %struct.snd_emu10k1_pcm* %165, %struct.snd_emu10k1_pcm** %167, align 8
  %168 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %169 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %170 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @snd_emu10k1_pcm_mixer_notify(%struct.snd_emu10k1* %168, i64 %171, i32 1)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %125, %81, %56, %46, %20
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_emu10k1_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @kfree(%struct.snd_emu10k1_pcm*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_noresample(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @memset(i32***, i32, i32) #1

declare dso_local i32 @snd_emu10k1_pcm_mixer_notify(%struct.snd_emu10k1*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
