; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_fake_beep_paths.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_fake_beep_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i64, i32, i32, i32, i32, i32, i32 }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @add_fake_beep_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_fake_beep_paths(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.auto_pin_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %4, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 1
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %5, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %81

24:                                               ; preds = %20
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @add_fake_paths(%struct.hda_codec* %25, i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %81

38:                                               ; preds = %24
  %39 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %51 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @add_fake_paths(%struct.hda_codec* %45, i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %81

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %69 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @add_fake_paths(%struct.hda_codec* %66, i32 %67, i32 %70, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %59
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %77, %56, %36, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @add_fake_paths(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
