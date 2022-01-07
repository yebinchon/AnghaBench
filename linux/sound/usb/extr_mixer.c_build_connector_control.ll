; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_connector_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_build_connector_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i64, i32 }
%struct.usb_audio_term = type { i32 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UAC_VERSION_2 = common dso_local global i64 0, align 8
@UAC2_TE_CONNECTOR = common dso_local global i32 0, align 4
@UAC3_TE_INSERTION = common dso_local global i32 0, align 4
@USB_MIXER_BOOLEAN = common dso_local global i32 0, align 4
@usb_connector_ctl_ro = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot malloc kcontrol\0A\00", align 1
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_mixer_interface*, %struct.usb_audio_term*, i32)* @build_connector_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_connector_control(%struct.usb_mixer_interface* %0, %struct.usb_audio_term* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_mixer_interface*, align 8
  %5 = alloca %struct.usb_audio_term*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.usb_mixer_elem_info*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %4, align 8
  store %struct.usb_audio_term* %1, %struct.usb_audio_term** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.usb_mixer_elem_info* @kzalloc(i32 32, i32 %9)
  store %struct.usb_mixer_elem_info* %10, %struct.usb_mixer_elem_info** %8, align 8
  %11 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %12 = icmp ne %struct.usb_mixer_elem_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %15, i32 0, i32 2
  %17 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %18 = load %struct.usb_audio_term*, %struct.usb_audio_term** %5, align 8
  %19 = getelementptr inbounds %struct.usb_audio_term, %struct.usb_audio_term* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_usb_mixer_elem_init_std(i32* %16, %struct.usb_mixer_interface* %17, i32 %20)
  %22 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UAC_VERSION_2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load i32, i32* @UAC2_TE_CONNECTOR, align 4
  %29 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %30 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %35

31:                                               ; preds = %14
  %32 = load i32, i32* @UAC3_TE_INSERTION, align 4
  %33 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %34 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @USB_MIXER_BOOLEAN, align 4
  %37 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %38 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %42 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %44 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %46 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @usb_connector_ctl_ro, %struct.usb_mixer_elem_info* %45)
  store %struct.snd_kcontrol* %46, %struct.snd_kcontrol** %7, align 8
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %48 = icmp ne %struct.snd_kcontrol* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %35
  %50 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_audio_err(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %55 = call i32 @usb_mixer_elem_info_free(%struct.usb_mixer_elem_info* %54)
  br label %72

56:                                               ; preds = %35
  %57 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %4, align 8
  %58 = load %struct.usb_audio_term*, %struct.usb_audio_term** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @get_connector_control_name(%struct.usb_mixer_interface* %57, %struct.usb_audio_term* %58, i32 %59, i32 %63, i32 4)
  %65 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %67 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %8, align 8
  %69 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %68, i32 0, i32 2
  %70 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %71 = call i32 @snd_usb_mixer_add_control(i32* %69, %struct.snd_kcontrol* %70)
  br label %72

72:                                               ; preds = %56, %49, %13
  ret void
}

declare dso_local %struct.usb_mixer_elem_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_usb_mixer_elem_init_std(i32*, %struct.usb_mixer_interface*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.usb_mixer_elem_info*) #1

declare dso_local i32 @usb_audio_err(i32, i8*) #1

declare dso_local i32 @usb_mixer_elem_info_free(%struct.usb_mixer_elem_info*) #1

declare dso_local i32 @get_connector_control_name(%struct.usb_mixer_interface*, %struct.usb_audio_term*, i32, i32, i32) #1

declare dso_local i32 @snd_usb_mixer_add_control(i32*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
