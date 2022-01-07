; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1708.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_patch_vt1708.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.via_spec = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@vt1708_build_controls = common dso_local global i32 0, align 4
@vt1708_build_pcms = common dso_local global i32 0, align 4
@VT1708_HP_PIN_NID = common dso_local global i32 0, align 4
@VT1708_CD_PIN_NID = common dso_local global i32 0, align 4
@vt1708_init_verbs = common dso_local global i32 0, align 4
@vt1708_jack_detect_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1708 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1708(%struct.hda_codec* %0) #0 {
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
  br label %69

13:                                               ; preds = %1
  %14 = load i32, i32* @vt1708_build_controls, align 4
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @vt1708_build_pcms, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %23 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 23, i32* %24, align 4
  %25 = call i64 @msecs_to_jiffies(i32 100)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %29 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %31 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %34 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 4
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = load i32, i32* @VT1708_HP_PIN_NID, align 4
  %38 = call i32 @vt1708_set_pinconfig_connect(%struct.hda_codec* %36, i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = load i32, i32* @VT1708_CD_PIN_NID, align 4
  %41 = call i32 @vt1708_set_pinconfig_connect(%struct.hda_codec* %39, i32 %40)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = load i32, i32* @vt1708_init_verbs, align 4
  %44 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %13
  br label %65

48:                                               ; preds = %13
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = call i32 @via_parse_auto_config(%struct.hda_codec* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %65

54:                                               ; preds = %48
  %55 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %56 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %55, i32 0, i32 1
  %57 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_4__* %56, i32* null, i32* @vt1708_jack_detect_ctl)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %64 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %59, %53, %47
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = call i32 @via_free(%struct.hda_codec* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %62, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @vt1708_set_pinconfig_connect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
