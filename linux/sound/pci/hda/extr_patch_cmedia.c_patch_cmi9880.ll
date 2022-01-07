; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cmedia.c_patch_cmi9880.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cmedia.c_patch_cmi9880.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.cmi_spec* }
%struct.cmi_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmi_auto_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_cmi9880 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cmi9880(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.cmi_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cmi_spec* @kzalloc(i32 4, i32 %7)
  store %struct.cmi_spec* %8, %struct.cmi_spec** %4, align 8
  %9 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %10 = icmp eq %struct.cmi_spec* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  store %struct.cmi_spec* %15, %struct.cmi_spec** %17, align 8
  %18 = load i32, i32* @cmi_auto_patch_ops, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %22 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.auto_pin_cfg* %23, %struct.auto_pin_cfg** %5, align 8
  %24 = load %struct.cmi_spec*, %struct.cmi_spec** %4, align 8
  %25 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %24, i32 0, i32 0
  %26 = call i32 @snd_hda_gen_spec_init(%struct.TYPE_2__* %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %29 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %27, %struct.auto_pin_cfg* %28, i32* null, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %41

33:                                               ; preds = %14
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %36 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %34, %struct.auto_pin_cfg* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %39, %32
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = call i32 @snd_hda_gen_free(%struct.hda_codec* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %40, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.cmi_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, %struct.auto_pin_cfg*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, %struct.auto_pin_cfg*) #1

declare dso_local i32 @snd_hda_gen_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
