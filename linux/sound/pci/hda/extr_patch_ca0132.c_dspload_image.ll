; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspload_image.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_dspload_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.dsp_image_seg = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"---- dspload_image begin ------\0A\00", align 1
@DMA_TRANSFER_FRAME_SIZE_NWORDS = common dso_local global i32 0, align 4
@DMA_OVERLAY_FRAME_SIZE_NWORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Ready to program DMA\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dsp_reset() complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"dspxfr_image() complete\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LOAD FINISHED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.dsp_image_seg*, i32, i32, i32, i32)* @dspload_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dspload_image(%struct.hda_codec* %0, %struct.dsp_image_seg* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca %struct.dsp_image_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store %struct.dsp_image_seg* %1, %struct.dsp_image_seg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %17 = call i32 @codec_dbg(%struct.hda_codec* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @DMA_TRANSFER_FRAME_SIZE_NWORDS, align 4
  store i32 %24, i32* %12, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @DMA_OVERLAY_FRAME_SIZE_NWORDS, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %6
  store i32 48000, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %15, align 2
  br label %31

31:                                               ; preds = %35, %28
  %32 = load i16, i16* %15, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sgt i32 %33, 16
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = mul i32 %36, 2
  store i32 %37, i32* %14, align 4
  %38 = load i16, i16* %15, align 2
  %39 = zext i16 %38 to i32
  %40 = sdiv i32 %39, 2
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  br label %31

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %45 = call i32 @codec_dbg(%struct.hda_codec* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %50 = call i32 @dsp_reset(%struct.hda_codec* %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %84

55:                                               ; preds = %51
  %56 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %57 = call i32 @codec_dbg(%struct.hda_codec* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %59 = load %struct.dsp_image_seg*, %struct.dsp_image_seg** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i16, i16* %15, align 2
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dspxfr_image(%struct.hda_codec* %58, %struct.dsp_image_seg* %59, i32 %60, i32 %61, i16 zeroext %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %84

68:                                               ; preds = %55
  %69 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %70 = call i32 @codec_dbg(%struct.hda_codec* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %78 = call i32 @dspload_post_setup(%struct.hda_codec* %77)
  %79 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %80 = call i32 @dsp_set_run_state(%struct.hda_codec* %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %73, %68
  %82 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %83 = call i32 @codec_dbg(%struct.hda_codec* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %67, %54
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

declare dso_local i32 @dsp_reset(%struct.hda_codec*) #1

declare dso_local i32 @dspxfr_image(%struct.hda_codec*, %struct.dsp_image_seg*, i32, i32, i16 zeroext, i32) #1

declare dso_local i32 @dspload_post_setup(%struct.hda_codec*) #1

declare dso_local i32 @dsp_set_run_state(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
