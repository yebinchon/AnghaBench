; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_sync_all_pin_power_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_sync_all_pin_power_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @sync_all_pin_power_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_all_pin_power_ctls(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 1
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  store %struct.hda_gen_spec* %8, %struct.hda_gen_spec** %3, align 8
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 0
  store %struct.auto_pin_cfg* %10, %struct.auto_pin_cfg** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sync_pin_power_ctls(%struct.hda_codec* %17, i32 %20, i32* %23)
  %25 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %16
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @sync_pin_power_ctls(%struct.hda_codec* %31, i32 %34, i32* %37)
  br label %39

39:                                               ; preds = %30, %16
  %40 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @sync_pin_power_ctls(%struct.hda_codec* %46, i32 %49, i32* %52)
  br label %54

54:                                               ; preds = %45, %39
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %58 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %63, i32 0, i32 5
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @sync_pin_power_ctls(%struct.hda_codec* %62, i32 1, i32* %69)
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %55

74:                                               ; preds = %15, %55
  ret void
}

declare dso_local i32 @sync_pin_power_ctls(%struct.hda_codec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
