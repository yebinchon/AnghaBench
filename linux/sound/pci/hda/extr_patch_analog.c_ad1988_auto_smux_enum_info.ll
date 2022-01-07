; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1988_auto_smux_enum_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_analog.c_ad1988_auto_smux_enum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.hda_codec = type { i32 }

@ad1988_auto_smux_enum_info.texts = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ADC1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ADC2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ADC3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @ad1988_auto_smux_enum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1988_auto_smux_enum_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.hda_codec* %8, %struct.hda_codec** %5, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %9, i32 11)
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol* %16, %struct.snd_ctl_elem_info* %17, i32 %18, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @ad1988_auto_smux_enum_info.texts, i64 0, i64 0))
  ret i32 %19
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
