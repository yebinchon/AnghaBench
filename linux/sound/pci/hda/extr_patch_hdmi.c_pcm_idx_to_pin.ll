; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pcm_idx_to_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pcm_idx_to_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spec_per_pin = type { i32 }
%struct.hdmi_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hdmi_spec_per_pin* (%struct.hdmi_spec*, i32)* @pcm_idx_to_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hdmi_spec_per_pin* @pcm_idx_to_pin(%struct.hdmi_spec* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_spec_per_pin*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hdmi_spec* %0, %struct.hdmi_spec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %11 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %15, i32 %16)
  store %struct.hdmi_spec_per_pin* %17, %struct.hdmi_spec_per_pin** %7, align 8
  %18 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %7, align 8
  store %struct.hdmi_spec_per_pin* %24, %struct.hdmi_spec_per_pin** %3, align 8
  br label %30

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %8

29:                                               ; preds = %8
  store %struct.hdmi_spec_per_pin* null, %struct.hdmi_spec_per_pin** %3, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %3, align 8
  ret %struct.hdmi_spec_per_pin* %31
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
