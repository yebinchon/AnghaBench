; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_all_pin_power_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_all_pin_power_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @add_all_pin_power_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_all_pin_power_ctls(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_gen_spec*, align 8
  %6 = alloca %struct.auto_pin_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %9, align 8
  store %struct.hda_gen_spec* %10, %struct.hda_gen_spec** %5, align 8
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 0
  store %struct.auto_pin_cfg* %12, %struct.auto_pin_cfg** %6, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %21 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @add_pin_power_ctls(%struct.hda_codec* %19, i32 %22, i32* %25, i32 %26)
  %28 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %29 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %18
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %36 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %39 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @add_pin_power_ctls(%struct.hda_codec* %34, i32 %37, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %18
  %44 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %55 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @add_pin_power_ctls(%struct.hda_codec* %50, i32 %53, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %43
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %69 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @add_pin_power_ctls(%struct.hda_codec* %67, i32 1, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %60

80:                                               ; preds = %17, %60
  ret void
}

declare dso_local i32 @add_pin_power_ctls(%struct.hda_codec*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
