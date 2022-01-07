; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { i64, i32, i32, %struct.snd_ali_voice* }
%struct.snd_ali = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"playback_prepare ...\0A\00", align 1
@ALI_SPDIF_IN_CHANNEL = common dso_local global i64 0, align 8
@ALI_PCM_IN_CHANNEL = common dso_local global i64 0, align 8
@ALI_GLOBAL_CONTROL = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_CH_ENABLE = common dso_local global i32 0, align 4
@ALI_SPDIF_OUT_CHANNEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"playback_prepare: eso=%xh count=%xh\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"playback_prepare:\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"ch=%d, Rate=%d Delta=%xh,GVSEL=%xh,PAN=%xh,CTRL=%xh\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ali_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ali*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_ali_voice*, align 8
  %6 = alloca %struct.snd_ali_voice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_ali* %16, %struct.snd_ali** %3, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %18, align 8
  store %struct.snd_pcm_runtime* %19, %struct.snd_pcm_runtime** %4, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 4
  %22 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %21, align 8
  store %struct.snd_ali_voice* %22, %struct.snd_ali_voice** %5, align 8
  %23 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %24 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %23, i32 0, i32 3
  %25 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %24, align 8
  store %struct.snd_ali_voice* %25, %struct.snd_ali_voice** %6, align 8
  %26 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %27 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %33 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_ali_convert_rate(i32 %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ALI_SPDIF_IN_CHANNEL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %1
  %45 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %46 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ALI_PCM_IN_CHANNEL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44, %1
  %51 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %52 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %53 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @snd_ali_disable_special_channel(%struct.snd_ali* %51, i64 %54)
  br label %82

56:                                               ; preds = %44
  %57 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %58 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %63 = load i32, i32* @ALI_GLOBAL_CONTROL, align 4
  %64 = call i32 @ALI_REG(%struct.snd_ali* %62, i32 %63)
  %65 = call i32 @inl(i32 %64)
  %66 = load i32, i32* @ALI_SPDIF_OUT_CH_ENABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ALI_SPDIF_OUT_CHANNEL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snd_ali_set_spdif_out_rate(%struct.snd_ali* %76, i32 %79)
  store i32 4096, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %69, %61, %56
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %7, align 4
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %90 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %95 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %97 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %102 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %105 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %109 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %113 = call i32 @snd_ali_control_mode(%struct.snd_pcm_substream* %112)
  store i32 %113, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %114 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %115 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_dbg(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %121 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %126 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i32, i8*, ...) @dev_dbg(i32 %124, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %127, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %137 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %138 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @snd_ali_write_voice_regs(%struct.snd_ali* %136, i64 %139, i32 %140, i32 0, i32 %141, i32 %142, i32 0, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %150 = icmp ne %struct.snd_ali_voice* %149, null
  br i1 %150, label %151, label %178

151:                                              ; preds = %82
  %152 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %153 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %156 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %5, align 8
  %158 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 %159, 1
  %161 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %162 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %164 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %168 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %169 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @snd_ali_write_voice_regs(%struct.snd_ali* %167, i64 %170, i32 %171, i32 0, i32 %172, i32 %173, i32 0, i32 %174, i32 127, i32 1023, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %151, %82
  %179 = load %struct.snd_ali*, %struct.snd_ali** %3, align 8
  %180 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %179, i32 0, i32 0
  %181 = call i32 @spin_unlock_irq(i32* %180)
  ret i32 0
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_ali_convert_rate(i32, i32) #1

declare dso_local i32 @snd_ali_disable_special_channel(%struct.snd_ali*, i64) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_set_spdif_out_rate(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ali_write_voice_regs(%struct.snd_ali*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
