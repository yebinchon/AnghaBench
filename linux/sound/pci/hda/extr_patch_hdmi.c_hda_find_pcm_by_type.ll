; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hda_find_pcm_by_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hda_find_pcm_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hda_pcm* (%struct.hda_codec*, i32)* @hda_find_pcm_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hda_pcm* @hda_find_pcm_by_type(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_pcm*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %15 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec* %19, i32 %20)
  store %struct.hda_pcm* %21, %struct.hda_pcm** %8, align 8
  %22 = load %struct.hda_pcm*, %struct.hda_pcm** %8, align 8
  %23 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load %struct.hda_pcm*, %struct.hda_pcm** %8, align 8
  store %struct.hda_pcm* %28, %struct.hda_pcm** %3, align 8
  br label %34

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %12

33:                                               ; preds = %12
  store %struct.hda_pcm* null, %struct.hda_pcm** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.hda_pcm*, %struct.hda_pcm** %3, align 8
  ret %struct.hda_pcm* %35
}

declare dso_local %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
