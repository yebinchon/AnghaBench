; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs4210_pinmux_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_cirrus.c_cs4210_pinmux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.cs_spec* }
%struct.cs_spec = type { i64, i64 }

@CS421X_IDX_DEV_CFG = common dso_local global i32 0, align 4
@CS421X_DMIC_PIN_NID = common dso_local global i32 0, align 4
@AC_DEFCFG_PORT_CONN = common dso_local global i32 0, align 4
@AC_JACK_PORT_NONE = common dso_local global i32 0, align 4
@AC_DEFCFG_PORT_CONN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cs4210_pinmux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4210_pinmux_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cs_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.cs_spec*, %struct.cs_spec** %7, align 8
  store %struct.cs_spec* %8, %struct.cs_spec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = load i32, i32* @CS421X_IDX_DEV_CFG, align 4
  %11 = call i32 @cs_vendor_coef_get(%struct.hda_codec* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %13 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 8
  store i32 %18, i32* %5, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -9
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %24 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 16
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -17
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = load i32, i32* @CS421X_IDX_DEV_CFG, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cs_vendor_coef_set(%struct.hda_codec* %34, i32 %35, i32 %36)
  %38 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %39 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  %44 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42, %33
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load i32, i32* @CS421X_DMIC_PIN_NID, align 4
  %50 = call i64 @is_active_pin(%struct.hda_codec* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = load i32, i32* @CS421X_DMIC_PIN_NID, align 4
  %55 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @AC_DEFCFG_PORT_CONN, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @AC_JACK_PORT_NONE, align 4
  %61 = load i32, i32* @AC_DEFCFG_PORT_CONN_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = load i32, i32* @CS421X_DMIC_PIN_NID, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %52, %47, %42
  ret void
}

declare dso_local i32 @cs_vendor_coef_get(%struct.hda_codec*, i32) #1

declare dso_local i32 @cs_vendor_coef_set(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @is_active_pin(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
