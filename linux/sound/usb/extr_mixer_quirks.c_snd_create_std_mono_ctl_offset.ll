; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_create_std_mono_ctl_offset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_quirks.c_snd_create_std_mono_ctl_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.usb_mixer_elem_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.snd_kcontrol = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usb_feature_unit_ctl = common dso_local global i32 0, align 4
@snd_usb_mixer_elem_free = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, i32, i32, i32, i32, i32, i8*, i32*)* @snd_create_std_mono_ctl_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_create_std_mono_ctl_offset(%struct.usb_mixer_interface* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_mixer_interface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.usb_mixer_elem_info*, align 8
  %19 = alloca %struct.snd_kcontrol*, align 8
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.usb_mixer_elem_info* @kzalloc(i32 64, i32 %20)
  store %struct.usb_mixer_elem_info* %21, %struct.usb_mixer_elem_info** %18, align 8
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %23 = icmp ne %struct.usb_mixer_elem_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %99

27:                                               ; preds = %8
  %28 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %29 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %28, i32 0, i32 6
  %30 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @snd_usb_mixer_elem_init_std(i32* %29, %struct.usb_mixer_interface* %30, i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %37 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %43 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %46 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %48 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %47, i32 0, i32 10
  store i64 0, i64* %48, align 8
  %49 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %49, i32 0, i32 5
  store i32 1, i32* %50, align 4
  %51 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %52 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %51, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %54 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %56 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @snd_usb_feature_unit_ctl, align 4
  %58 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %59 = call %struct.snd_kcontrol* @snd_ctl_new1(i32 %57, %struct.usb_mixer_elem_info* %58)
  store %struct.snd_kcontrol* %59, %struct.snd_kcontrol** %19, align 8
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %19, align 8
  %61 = icmp ne %struct.snd_kcontrol* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %27
  %63 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %64 = call i32 @kfree(%struct.usb_mixer_elem_info* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %99

67:                                               ; preds = %27
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %19, align 8
  %69 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %16, align 8
  %73 = call i32 @snprintf(i32 %71, i32 4, i8* %72)
  %74 = load i32, i32* @snd_usb_mixer_elem_free, align 4
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %19, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %67
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %19, align 8
  %82 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %85 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %19, align 8
  %88 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %86
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %79, %67
  %95 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %18, align 8
  %96 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %95, i32 0, i32 6
  %97 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %19, align 8
  %98 = call i32 @snd_usb_mixer_add_control(i32* %96, %struct.snd_kcontrol* %97)
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %62, %24
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local %struct.usb_mixer_elem_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_usb_mixer_elem_init_std(i32*, %struct.usb_mixer_interface*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32, %struct.usb_mixer_elem_info*) #1

declare dso_local i32 @kfree(%struct.usb_mixer_elem_info*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @snd_usb_mixer_add_control(i32*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
