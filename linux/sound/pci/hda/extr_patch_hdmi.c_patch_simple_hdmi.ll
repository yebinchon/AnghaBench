; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_patch_simple_hdmi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_patch_simple_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.hda_codec* }
%struct.TYPE_2__ = type { i32, i8*, i64 }
%struct.hdmi_spec_per_cvt = type { i8* }
%struct.hdmi_spec_per_pin = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_pcm_playback = common dso_local global i32 0, align 4
@simple_hdmi_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i8*)* @patch_simple_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_simple_hdmi(%struct.hda_codec* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hdmi_spec* @kzalloc(i32 56, i32 %11)
  store %struct.hdmi_spec* %12, %struct.hdmi_spec** %8, align 8
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %14 = icmp ne %struct.hdmi_spec* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %21 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %20, i32 0, i32 6
  store %struct.hda_codec* %19, %struct.hda_codec** %21, align 8
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 1
  store %struct.hdmi_spec* %22, %struct.hdmi_spec** %24, align 8
  %25 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %26 = call i32 @hdmi_array_init(%struct.hdmi_spec* %25, i32 1)
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %31 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 2, i32* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %35 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %38 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %41, i32 0, i32 4
  %43 = call i8* @snd_array_new(i32* %42)
  %44 = bitcast i8* %43 to %struct.hdmi_spec_per_pin*
  store %struct.hdmi_spec_per_pin* %44, %struct.hdmi_spec_per_pin** %10, align 8
  %45 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %46 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %45, i32 0, i32 3
  %47 = call i8* @snd_array_new(i32* %46)
  %48 = bitcast i8* %47 to %struct.hdmi_spec_per_cvt*
  store %struct.hdmi_spec_per_cvt* %48, %struct.hdmi_spec_per_cvt** %9, align 8
  %49 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %50 = icmp ne %struct.hdmi_spec_per_pin* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %18
  %52 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %9, align 8
  %53 = icmp ne %struct.hdmi_spec_per_cvt* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51, %18
  %55 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %56 = call i32 @simple_playback_free(%struct.hda_codec* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %72

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %9, align 8
  %62 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %65 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @simple_pcm_playback, align 4
  %67 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %68 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @simple_hdmi_patch_ops, align 4
  %70 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %71 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %59, %54, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.hdmi_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @hdmi_array_init(%struct.hdmi_spec*, i32) #1

declare dso_local i8* @snd_array_new(i32*) #1

declare dso_local i32 @simple_playback_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
