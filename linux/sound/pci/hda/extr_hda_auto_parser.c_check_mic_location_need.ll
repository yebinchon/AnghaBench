; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_check_mic_location_need.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_check_mic_location_need.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INPUT_PIN_ATTR_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.auto_pin_cfg*, i32)* @check_mic_location_need to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mic_location_need(%struct.hda_codec* %0, %struct.auto_pin_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.auto_pin_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.auto_pin_cfg* %1, %struct.auto_pin_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %14 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %12, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @snd_hda_get_input_pin_attr(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @INPUT_PIN_ATTR_NORMAL, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %62, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %32 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %37 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %36, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @snd_hda_get_input_pin_attr(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @INPUT_PIN_ATTR_NORMAL, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %35
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %66

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %29

65:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %58, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_input_pin_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
