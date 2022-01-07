; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_write_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_write_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__, %struct.alc_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.alc_spec = type { i64, i32, i32 }

@AC_VERB_SET_GPIO_MASK = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_DIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_write_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_write_gpio(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 1
  %6 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  store %struct.alc_spec* %6, %struct.alc_spec** %3, align 8
  %7 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %8 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AC_VERB_SET_GPIO_MASK, align 4
  %19 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %13, i32 %17, i32 0, i32 %18, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AC_VERB_SET_GPIO_DIRECTION, align 4
  %29 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %30 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snd_hda_codec_write(%struct.hda_codec* %23, i32 %27, i32 0, i32 %28, i32 %31)
  %33 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %34 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %12
  %38 = call i32 @msleep(i32 1)
  br label %39

39:                                               ; preds = %37, %12
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @alc_write_gpio_data(%struct.hda_codec* %40)
  br label %42

42:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @alc_write_gpio_data(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
