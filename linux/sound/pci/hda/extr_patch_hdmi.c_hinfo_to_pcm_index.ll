; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hinfo_to_pcm_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_hinfo_to_pcm_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hda_pcm_stream = type { i32 }
%struct.TYPE_2__ = type { %struct.hda_pcm_stream* }

@.str = private unnamed_addr constant [31 x i8] c"HDMI: hinfo %p not registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.hda_pcm_stream*)* @hinfo_to_pcm_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinfo_to_pcm_index(%struct.hda_codec* %0, %struct.hda_pcm_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hdmi_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream** %5, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %14 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.TYPE_2__* @get_pcm_rec(%struct.hdmi_spec* %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %21, align 8
  %23 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %24 = icmp eq %struct.hda_pcm_stream* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %34 = call i32 @codec_warn(%struct.hda_codec* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.hda_pcm_stream* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_2__* @get_pcm_rec(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @codec_warn(%struct.hda_codec*, i8*, %struct.hda_pcm_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
