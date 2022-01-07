; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt3476.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt3476.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@vt3476_init_verbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt3476 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt3476(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 63, i32* %16, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @add_secret_dac_path(%struct.hda_codec* %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i32, i32* @vt3476_init_verbs, align 4
  %21 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %32

25:                                               ; preds = %13
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @via_parse_auto_config(%struct.hda_codec* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %30, %24
  %33 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %34 = call i32 @via_free(%struct.hda_codec* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %31, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i32 @add_secret_dac_path(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
