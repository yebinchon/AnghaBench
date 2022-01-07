; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_via_new_spec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_via_new_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_spec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.hda_codec = type { i32, i32, %struct.via_spec* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VT1708BCE = common dso_local global i64 0, align 8
@VT1708S = common dso_local global i64 0, align 8
@via_playback_pcm_hook = common dso_local global i32 0, align 4
@HDA_HINT_STEREO_MIX_AUTO = common dso_local global i32 0, align 4
@via_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.via_spec* (%struct.hda_codec*)* @via_new_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.via_spec* @via_new_spec(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.via_spec*, align 8
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.via_spec* @kzalloc(i32 32, i32 %5)
  store %struct.via_spec* %6, %struct.via_spec** %4, align 8
  %7 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %8 = icmp eq %struct.via_spec* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.via_spec* null, %struct.via_spec** %2, align 8
  br label %54

10:                                               ; preds = %1
  %11 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 2
  store %struct.via_spec* %11, %struct.via_spec** %13, align 8
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 1
  %16 = call i32 @snd_hda_gen_spec_init(%struct.TYPE_2__* %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i64 @get_codec_type(%struct.hda_codec* %17)
  %19 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %20 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %22 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VT1708BCE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = load i64, i64* @VT1708S, align 8
  %28 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %29 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %10
  %31 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %32 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %35 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @via_playback_pcm_hook, align 4
  %38 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %39 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @HDA_HINT_STEREO_MIX_AUTO, align 4
  %42 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %43 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %48 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @via_patch_ops, align 4
  %51 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %52 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  store %struct.via_spec* %53, %struct.via_spec** %2, align 8
  br label %54

54:                                               ; preds = %30, %9
  %55 = load %struct.via_spec*, %struct.via_spec** %2, align 8
  ret %struct.via_spec* %55
}

declare dso_local %struct.via_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(%struct.TYPE_2__*) #1

declare dso_local i64 @get_codec_type(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
