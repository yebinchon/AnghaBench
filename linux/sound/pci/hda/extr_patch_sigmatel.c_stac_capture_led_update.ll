; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_capture_led_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_capture_led_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_capture_led_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_capture_led_update(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  store %struct.sigmatel_spec* %6, %struct.sigmatel_spec** %3, align 8
  %7 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %8 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %15 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %18 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %23 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %21, %13
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %33 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %36 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @stac_gpio_set(%struct.hda_codec* %31, i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
