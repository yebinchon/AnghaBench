; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_call_pcm_capture_hook.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_call_pcm_capture_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 (%struct.hda_pcm_stream*, %struct.hda_codec.0*, %struct.snd_pcm_substream*, i32)* }
%struct.hda_codec.0 = type opaque
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*, i32)* @call_pcm_capture_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_pcm_capture_hook(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %9, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 0
  %15 = load i32 (%struct.hda_pcm_stream*, %struct.hda_codec.0*, %struct.snd_pcm_substream*, i32)*, i32 (%struct.hda_pcm_stream*, %struct.hda_codec.0*, %struct.snd_pcm_substream*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.hda_pcm_stream*, %struct.hda_codec.0*, %struct.snd_pcm_substream*, i32)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 0
  %20 = load i32 (%struct.hda_pcm_stream*, %struct.hda_codec.0*, %struct.snd_pcm_substream*, i32)*, i32 (%struct.hda_pcm_stream*, %struct.hda_codec.0*, %struct.snd_pcm_substream*, i32)** %19, align 8
  %21 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %22 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %23 = bitcast %struct.hda_codec* %22 to %struct.hda_codec.0*
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 %20(%struct.hda_pcm_stream* %21, %struct.hda_codec.0* %23, %struct.snd_pcm_substream* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
