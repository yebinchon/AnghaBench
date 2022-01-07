; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.azx_pcm = type { i32, %struct.azx* }
%struct.azx = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.azx_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hda_pcm_stream = type { i32, i32 }
%struct.hda_spdif_out = type { i16 }
%struct.TYPE_9__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"invalid format_val, rate=%d, ch=%d, format=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AZX_DCAPS_CTX_WORKAROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @azx_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.azx_pcm*, align 8
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hda_spdif_out*, align 8
  %12 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.azx_pcm* %14, %struct.azx_pcm** %3, align 8
  %15 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %16 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %15, i32 0, i32 1
  %17 = load %struct.azx*, %struct.azx** %16, align 8
  store %struct.azx* %17, %struct.azx** %4, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream* %18)
  store %struct.azx_dev* %19, %struct.azx_dev** %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %21 = call %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream* %20)
  store %struct.hda_pcm_stream* %21, %struct.hda_pcm_stream** %6, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %23, align 8
  store %struct.snd_pcm_runtime* %24, %struct.snd_pcm_runtime** %7, align 8
  %25 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %26 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %29 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(i32 %27, i32 %30)
  store %struct.hda_spdif_out* %31, %struct.hda_spdif_out** %11, align 8
  %32 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %11, align 8
  %33 = icmp ne %struct.hda_spdif_out* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %11, align 8
  %36 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ %38, %34 ], [ 0, %39 ]
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %12, align 2
  %43 = load %struct.azx*, %struct.azx** %4, align 8
  %44 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %45 = call i32 @trace_azx_pcm_prepare(%struct.azx* %43, %struct.azx_dev* %44)
  %46 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %47 = call i32 @dsp_lock(%struct.azx_dev* %46)
  %48 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %49 = call i64 @dsp_is_locked(%struct.azx_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %138

54:                                               ; preds = %40
  %55 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %56 = call %struct.TYPE_9__* @azx_stream(%struct.azx_dev* %55)
  %57 = call i32 @snd_hdac_stream_reset(%struct.TYPE_9__* %56)
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %68 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i16, i16* %12, align 2
  %71 = call i32 @snd_hdac_calc_stream_format(i32 %60, i32 %63, i32 %66, i32 %69, i16 zeroext %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %54
  %75 = load %struct.azx*, %struct.azx** %4, align 8
  %76 = getelementptr inbounds %struct.azx, %struct.azx* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %138

92:                                               ; preds = %54
  %93 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %94 = call %struct.TYPE_9__* @azx_stream(%struct.azx_dev* %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @snd_hdac_stream_set_params(%struct.TYPE_9__* %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %138

100:                                              ; preds = %92
  %101 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %102 = call %struct.TYPE_9__* @azx_stream(%struct.azx_dev* %101)
  %103 = call i32 @snd_hdac_stream_setup(%struct.TYPE_9__* %102)
  %104 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %105 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  %108 = load %struct.azx*, %struct.azx** %4, align 8
  %109 = getelementptr inbounds %struct.azx, %struct.azx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AZX_DCAPS_CTX_WORKAROUND, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %100
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.azx*, %struct.azx** %4, align 8
  %117 = getelementptr inbounds %struct.azx, %struct.azx* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ugt i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.azx*, %struct.azx** %4, align 8
  %122 = getelementptr inbounds %struct.azx, %struct.azx* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %120, %114, %100
  %127 = load %struct.azx_pcm*, %struct.azx_pcm** %3, align 8
  %128 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %133 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %137 = call i32 @snd_hda_codec_prepare(i32 %129, %struct.hda_pcm_stream* %130, i32 %131, i32 %135, %struct.snd_pcm_substream* %136)
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %126, %99, %74, %51
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %143 = call %struct.TYPE_9__* @azx_stream(%struct.azx_dev* %142)
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %138
  %146 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %147 = call i32 @dsp_unlock(%struct.azx_dev* %146)
  %148 = load i32, i32* %10, align 4
  ret i32 %148
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.azx_dev* @get_azx_dev(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hda_pcm_stream* @to_hda_pcm_stream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(i32, i32) #1

declare dso_local i32 @trace_azx_pcm_prepare(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @dsp_lock(%struct.azx_dev*) #1

declare dso_local i64 @dsp_is_locked(%struct.azx_dev*) #1

declare dso_local i32 @snd_hdac_stream_reset(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @azx_stream(%struct.azx_dev*) #1

declare dso_local i32 @snd_hdac_calc_stream_format(i32, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_hdac_stream_set_params(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @snd_hdac_stream_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @snd_hda_codec_prepare(i32, %struct.hda_pcm_stream*, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dsp_unlock(%struct.azx_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
