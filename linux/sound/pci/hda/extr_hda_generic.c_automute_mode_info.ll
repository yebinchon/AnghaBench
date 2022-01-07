; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_automute_mode_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_automute_mode_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i64, i64 }

@automute_mode_info.texts3 = internal constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Speaker Only\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Line Out+Speaker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @automute_mode_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @automute_mode_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.hda_codec* %9, %struct.hda_codec** %6, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %7, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %25 = call i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol* %23, %struct.snd_ctl_elem_info* %24, i32 3, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @automute_mode_info.texts3, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %17, %2
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %28 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %29 = call i32 @snd_hda_enum_bool_helper_info(%struct.snd_kcontrol* %27, %struct.snd_ctl_elem_info* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.hda_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_enum_helper_info(%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*, i32, i8**) #1

declare dso_local i32 @snd_hda_enum_bool_helper_info(%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
