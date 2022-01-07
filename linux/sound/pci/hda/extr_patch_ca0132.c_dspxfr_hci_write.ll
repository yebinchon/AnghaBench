; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspxfr_hci_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspxfr_hci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.dsp_image_seg = type { i64, i32, i64 }

@g_chip_addr_magic_value = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"hci_write invalid params\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"hci_write chipio failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.dsp_image_seg*)* @dspxfr_hci_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspxfr_hci_write(%struct.hda_codec* %0, %struct.dsp_image_seg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.dsp_image_seg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.dsp_image_seg* %1, %struct.dsp_image_seg** %5, align 8
  %9 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %5, align 8
  %10 = icmp eq %struct.dsp_image_seg* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %5, align 8
  %13 = getelementptr inbounds %struct.dsp_image_seg, %struct.dsp_image_seg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @g_chip_addr_magic_value, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11, %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %19 = call i32 @codec_dbg(%struct.hda_codec* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %11
  %23 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %5, align 8
  %24 = getelementptr inbounds %struct.dsp_image_seg, %struct.dsp_image_seg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %5, align 8
  %27 = getelementptr inbounds %struct.dsp_image_seg, %struct.dsp_image_seg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %7, align 8
  br label %30

30:                                               ; preds = %48, %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp uge i32 %31, 2
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @chipio_write(%struct.hda_codec* %34, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %46 = call i32 @codec_dbg(%struct.hda_codec* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %49, 2
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %52, i32** %7, align 8
  br label %30

53:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %44, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
