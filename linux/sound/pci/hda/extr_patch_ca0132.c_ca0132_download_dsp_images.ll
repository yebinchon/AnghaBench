; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_download_dsp_images.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_download_dsp_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__*, %struct.ca0132_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.ca0132_spec = type { i32 }
%struct.dsp_image_seg = type { i32 }
%struct.firmware = type { i64 }

@DESKTOP_EFX_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Desktop firmware not found.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Desktop firmware selected.\00", align 1
@R3DI_EFX_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Recon3Di alt firmware not detected.\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Recon3Di firmware selected.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Default firmware selected.\00", align 1
@EFX_FILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"ca0132 DSP load image failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ca0132_download_dsp_images to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca0132_download_dsp_images(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca0132_spec*, align 8
  %6 = alloca %struct.dsp_image_seg*, align 8
  %7 = alloca %struct.firmware*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %5, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %5, align 8
  %12 = call i32 @ca0132_quirk(%struct.ca0132_spec* %11)
  switch i32 %12, label %45 [
    i32 128, label %13
    i32 130, label %13
    i32 131, label %13
    i32 129, label %29
  ]

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @DESKTOP_EFX_FILE, align 4
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @request_firmware(%struct.firmware** %7, i32 %14, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @codec_dbg(%struct.hda_codec* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @codec_dbg(%struct.hda_codec* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  br label %46

29:                                               ; preds = %1
  %30 = load i32, i32* @R3DI_EFX_FILE, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @request_firmware(%struct.firmware** %7, i32 %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = call i32 @codec_dbg(%struct.hda_codec* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %44

41:                                               ; preds = %29
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = call i32 @codec_dbg(%struct.hda_codec* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %44, %28
  %47 = load %struct.firmware*, %struct.firmware** %7, align 8
  %48 = icmp ne %struct.firmware* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = call i32 @codec_dbg(%struct.hda_codec* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @EFX_FILE, align 4
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @request_firmware(%struct.firmware** %7, i32 %52, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %81

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.firmware*, %struct.firmware** %7, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.dsp_image_seg*
  store %struct.dsp_image_seg* %66, %struct.dsp_image_seg** %6, align 8
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %6, align 8
  %69 = call i64 @dspload_image(%struct.hda_codec* %67, %struct.dsp_image_seg* %68, i32 0, i32 0, i32 1, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = call i32 @codec_err(%struct.hda_codec* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %77

74:                                               ; preds = %62
  %75 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %76 = call i32 @dspload_wait_loaded(%struct.hda_codec* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.firmware*, %struct.firmware** %7, align 8
  %79 = call i32 @release_firmware(%struct.firmware* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %60
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i64 @dspload_image(%struct.hda_codec*, %struct.dsp_image_seg*, i32, i32, i32, i32) #1

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*) #1

declare dso_local i32 @dspload_wait_loaded(%struct.hda_codec*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
