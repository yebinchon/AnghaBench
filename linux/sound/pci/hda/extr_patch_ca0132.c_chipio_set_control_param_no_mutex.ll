; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_chipio_set_control_param_no_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_chipio_set_control_param_no_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_STATUS = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_EX_ID_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PARAM_EX_VALUE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @chipio_set_control_param_no_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chipio_set_control_param_no_mutex(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 5
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %20 = load i32, i32* @VENDOR_CHIPIO_PARAM_SET, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @snd_hda_codec_write(%struct.hda_codec* %18, i32 %19, i32 0, i32 %20, i32 %21)
  br label %40

23:                                               ; preds = %10, %3
  %24 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %25 = load i32, i32* @VENDOR_CHIPIO_STATUS, align 4
  %26 = call i64 @chipio_send(%struct.hda_codec* %24, i32 %25, i32 0)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %31 = load i32, i32* @VENDOR_CHIPIO_PARAM_EX_ID_SET, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @snd_hda_codec_write(%struct.hda_codec* %29, i32 %30, i32 0, i32 %31, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %36 = load i32, i32* @VENDOR_CHIPIO_PARAM_EX_VALUE_SET, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snd_hda_codec_write(%struct.hda_codec* %34, i32 %35, i32 0, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %23
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i64 @chipio_send(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
