; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_set_dmic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_set_dmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"ca0132_set_dmic: enable=%d\0A\00", align 1
@FLOAT_TWO = common dso_local global i32 0, align 4
@VENDOR_CHIPIO_DMIC_CTL_SET = common dso_local global i32 0, align 4
@CONTROL_FLAG_DMIC = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @ca0132_set_dmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_set_dmic(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca0132_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %10, align 8
  store %struct.ca0132_spec* %11, %struct.ca0132_spec** %5, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @codec_dbg(%struct.hda_codec* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = call i32 @stop_mic1(%struct.hda_codec* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i32 @ca0132_set_vipsource(%struct.hda_codec* %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dspio_set_uint_param(%struct.hda_codec* %23, i32 128, i32 0, i32 %24)
  %26 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %27 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 128
  store i32 %30, i32* %7, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %33 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VENDOR_CHIPIO_DMIC_CTL_SET, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @snd_hda_codec_write(%struct.hda_codec* %31, i32 %36, i32 0, i32 %37, i32 %38)
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %21
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = load i32, i32* @CONTROL_FLAG_DMIC, align 4
  %48 = call i32 @chipio_set_control_flag(%struct.hda_codec* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %45, %21
  br label %79

50:                                               ; preds = %2
  %51 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dspio_set_uint_param(%struct.hda_codec* %52, i32 128, i32 0, i32 %53)
  %55 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %56 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 95
  store i32 %59, i32* %7, align 4
  %60 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %61 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %62 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VENDOR_CHIPIO_DMIC_CTL_SET, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @snd_hda_codec_write(%struct.hda_codec* %60, i32 %65, i32 0, i32 %66, i32 %67)
  %69 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %70 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %50
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = load i32, i32* @CONTROL_FLAG_DMIC, align 4
  %77 = call i32 @chipio_set_control_flag(%struct.hda_codec* %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %74, %50
  br label %79

79:                                               ; preds = %78, %49
  %80 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %81 = call i32 @ca0132_set_vipsource(%struct.hda_codec* %80, i32 1)
  %82 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @resume_mic1(%struct.hda_codec* %82, i32 %83)
  ret void
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32) #1

declare dso_local i32 @stop_mic1(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_set_vipsource(%struct.hda_codec*, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @chipio_set_control_flag(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @resume_mic1(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
