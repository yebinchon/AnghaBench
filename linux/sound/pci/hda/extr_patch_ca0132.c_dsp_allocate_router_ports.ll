; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_allocate_router_ports.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dsp_allocate_router_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@VENDOR_CHIPIO_STATUS = common dso_local global i32 0, align 4
@WIDGET_CHIP_CTRL = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PORT_ALLOC_CONFIG_SET = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PORT_ALLOC_SET = common dso_local global i32 0, align 4
@MEM_CONNID_DSP = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_PORT_ALLOC_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32, i32, i32*)* @dsp_allocate_router_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_allocate_router_ports(%struct.hda_codec* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %16 = load i32, i32* @VENDOR_CHIPIO_STATUS, align 4
  %17 = call i32 @chipio_send(%struct.hda_codec* %15, i32 %16, i32 0)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %65

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 6
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub i32 %25, 1
  %27 = shl i32 %26, 4
  %28 = load i32, i32* %14, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 1
  %32 = load i32, i32* %14, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %14, align 4
  %34 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %35 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %36 = load i32, i32* @VENDOR_CHIPIO_PORT_ALLOC_CONFIG_SET, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @snd_hda_codec_write(%struct.hda_codec* %34, i32 %35, i32 0, i32 %36, i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %40 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %41 = load i32, i32* @VENDOR_CHIPIO_PORT_ALLOC_SET, align 4
  %42 = load i32, i32* @MEM_CONNID_DSP, align 4
  %43 = call i32 @snd_hda_codec_write(%struct.hda_codec* %39, i32 %40, i32 0, i32 %41, i32 %42)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %45 = load i32, i32* @VENDOR_CHIPIO_STATUS, align 4
  %46 = call i32 @chipio_send(%struct.hda_codec* %44, i32 %45, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %22
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %65

51:                                               ; preds = %22
  %52 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %53 = load i32, i32* @WIDGET_CHIP_CTRL, align 4
  %54 = load i32, i32* @VENDOR_CHIPIO_PORT_ALLOC_GET, align 4
  %55 = call i32 @snd_hda_codec_read(%struct.hda_codec* %52, i32 %53, i32 0, i32 %54, i32 0)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %49, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @chipio_send(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
