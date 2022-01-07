; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_get_codec_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_get_codec_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_compr_codec_caps*)* }
%struct.snd_compr_codec_caps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_codec_caps*)* @sst_platform_compr_get_codec_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_compr_get_codec_caps(%struct.snd_compr_stream* %0, %struct.snd_compr_codec_caps* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_codec_caps*, align 8
  %5 = alloca %struct.sst_runtime_stream*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_codec_caps* %1, %struct.snd_compr_codec_caps** %4, align 8
  %6 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %9, align 8
  store %struct.sst_runtime_stream* %10, %struct.sst_runtime_stream** %5, align 8
  %11 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %5, align 8
  %12 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.snd_compr_codec_caps*)*, i32 (%struct.snd_compr_codec_caps*)** %14, align 8
  %16 = load %struct.snd_compr_codec_caps*, %struct.snd_compr_codec_caps** %4, align 8
  %17 = call i32 %15(%struct.snd_compr_codec_caps* %16)
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
