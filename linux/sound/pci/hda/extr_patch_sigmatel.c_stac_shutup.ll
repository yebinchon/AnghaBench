; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_shutup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_sigmatel.c_stac_shutup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @stac_shutup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_shutup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %5, align 8
  store %struct.sigmatel_spec* %6, %struct.sigmatel_spec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @snd_hda_shutup_pins(%struct.hda_codec* %7)
  %9 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %10 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %16 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %22 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %25 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = call i32 @stac_gpio_set(%struct.hda_codec* %14, i32 %17, i32 %20, i32 %28)
  br label %30

30:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @snd_hda_shutup_pins(%struct.hda_codec*) #1

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
