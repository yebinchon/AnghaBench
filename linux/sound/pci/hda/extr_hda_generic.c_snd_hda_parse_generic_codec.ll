; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_parse_generic_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_snd_hda_parse_generic_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@generic_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @snd_hda_parse_generic_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hda_parse_generic_codec(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hda_gen_spec* @kzalloc(i32 4, i32 %6)
  store %struct.hda_gen_spec* %7, %struct.hda_gen_spec** %4, align 8
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %9 = icmp ne %struct.hda_gen_spec* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %15 = call i32 @snd_hda_gen_spec_init(%struct.hda_gen_spec* %14)
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  store %struct.hda_gen_spec* %16, %struct.hda_gen_spec** %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %21 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %20, i32 0, i32 0
  %22 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %19, i32* %21, i32* null, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %29 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %28, i32 0, i32 0
  %30 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %27, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @generic_patch_ops, align 4
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %33, %25
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = call i32 @snd_hda_gen_free(%struct.hda_codec* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %34, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.hda_gen_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(%struct.hda_gen_spec*) #1

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, i32*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, i32*) #1

declare dso_local i32 @snd_hda_gen_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
