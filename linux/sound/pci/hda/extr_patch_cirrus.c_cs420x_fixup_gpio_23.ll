; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs420x_fixup_gpio_23.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs420x_fixup_gpio_23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i32, i32, i32, i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @cs420x_fixup_gpio_23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs420x_fixup_gpio_23(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.cs_spec*, %struct.cs_spec** %13, align 8
  store %struct.cs_spec* %14, %struct.cs_spec** %7, align 8
  %15 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  %16 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %15, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  %18 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %17, i32 0, i32 1
  store i32 8, i32* %18, align 4
  %19 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  %20 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  %23 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  %27 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  %29 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %11, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
