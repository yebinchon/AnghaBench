; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1983_auto_smux_enum_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1983_auto_smux_enum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ad1983_auto_smux_enum_info.texts2 = internal constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@ad1983_auto_smux_enum_info.texts3 = internal constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"ADC1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ADC2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @ad1983_auto_smux_enum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1983_auto_smux_enum_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.ad198x_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.hda_codec* %11, %struct.hda_codec** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.ad198x_spec*, %struct.ad198x_spec** %13, align 8
  store %struct.ad198x_spec* %14, %struct.ad198x_spec** %7, align 8
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %16 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %27 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %28 = call i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol* %26, %struct.snd_ctl_elem_info* %27, i32 2, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @ad1983_auto_smux_enum_info.texts2, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %35 = call i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol* %33, %struct.snd_ctl_elem_info* %34, i32 3, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @ad1983_auto_smux_enum_info.texts3, i64 0, i64 0))
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %32, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
