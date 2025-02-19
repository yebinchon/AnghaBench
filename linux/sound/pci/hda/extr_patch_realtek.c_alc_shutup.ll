; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_shutup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_shutup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32 (%struct.hda_codec*)* }

@.str = private unnamed_addr constant [7 x i8] c"shutup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_shutup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_shutup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  store %struct.alc_spec* %6, %struct.alc_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %13 = icmp ne %struct.alc_spec* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %16 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %15, i32 0, i32 0
  %17 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %16, align 8
  %18 = icmp ne i32 (%struct.hda_codec*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 0
  %22 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %21, align 8
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = call i32 %22(%struct.hda_codec* %23)
  br label %28

25:                                               ; preds = %14, %11
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @alc_shutup_pins(%struct.hda_codec* %26)
  br label %28

28:                                               ; preds = %10, %25, %19
  ret void
}

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

declare dso_local i32 @alc_shutup_pins(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
