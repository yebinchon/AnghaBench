; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_patch_cs420x.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_patch_cs420x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32 }
%struct.cs_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CS420X_VENDOR_NID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs_patch_ops = common dso_local global i32 0, align 4
@cs_automute = common dso_local global i32 0, align 4
@cs420x_models = common dso_local global i32 0, align 4
@cs420x_fixup_tbl = common dso_local global i32 0, align 4
@cs420x_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_cs420x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cs420x(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.cs_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @CS420X_VENDOR_NID, align 4
  %8 = call %struct.cs_spec* @cs_alloc_spec(%struct.hda_codec* %6, i32 %7)
  store %struct.cs_spec* %8, %struct.cs_spec** %4, align 8
  %9 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %10 = icmp ne %struct.cs_spec* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* @cs_patch_ops, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @cs_automute, align 4
  %19 = load %struct.cs_spec*, %struct.cs_spec** %4, align 8
  %20 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @cs420x_models, align 4
  %26 = load i32, i32* @cs420x_fixup_tbl, align 4
  %27 = load i32, i32* @cs420x_fixups, align 4
  %28 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %31 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %29, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = call i32 @cs_parse_auto_config(%struct.hda_codec* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  br label %41

37:                                               ; preds = %14
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %40 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %36
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = call i32 @cs_free(%struct.hda_codec* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %37, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.cs_spec* @cs_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @cs_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @cs_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
