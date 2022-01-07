; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, %struct.TYPE_2__, {}* }
%struct.TYPE_2__ = type { i32 }

@HDA_FIXUP_ACT_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  store %struct.alc_spec* %6, %struct.alc_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i64 @is_s4_resume(%struct.hda_codec* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = call i32 @alc_pre_init(%struct.hda_codec* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %15 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %14, i32 0, i32 2
  %16 = bitcast {}** %15 to i32 (%struct.hda_codec*)**
  %17 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %16, align 8
  %18 = icmp ne i32 (%struct.hda_codec*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %21 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %20, i32 0, i32 2
  %22 = bitcast {}** %21 to i32 (%struct.hda_codec*)**
  %23 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %22, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 %23(%struct.hda_codec* %24)
  br label %26

26:                                               ; preds = %19, %13
  %27 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %28 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @snd_hda_gen_init(%struct.hda_codec* %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @alc_fix_pll(%struct.hda_codec* %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %36 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @alc_auto_init_amp(%struct.hda_codec* %34, i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @snd_hda_apply_verbs(%struct.hda_codec* %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load i32, i32* @HDA_FIXUP_ACT_INIT, align 4
  %43 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %41, i32 %42)
  ret i32 0
}

declare dso_local i64 @is_s4_resume(%struct.hda_codec*) #1

declare dso_local i32 @alc_pre_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @alc_fix_pll(%struct.hda_codec*) #1

declare dso_local i32 @alc_auto_init_amp(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_apply_verbs(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
