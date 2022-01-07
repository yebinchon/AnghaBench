; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pin_id_to_pin_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_pin_id_to_pin_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"HDMI: pin nid %d not registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i64, i32)* @pin_id_to_pin_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_id_to_pin_index(%struct.hda_codec* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  store %struct.hdmi_spec* %13, %struct.hdmi_spec** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %21 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %25, i32 %26)
  store %struct.hdmi_spec_per_pin* %27, %struct.hdmi_spec_per_pin** %10, align 8
  %28 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %29 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %35 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %33, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @codec_warn(%struct.hda_codec* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @codec_warn(%struct.hda_codec*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
