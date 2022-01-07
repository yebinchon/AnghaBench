; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_get_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_eld.c_snd_hdmi_get_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"HDMI: ELD buf size is 0, force 128\0A\00", align 1
@ELD_FIXED_BYTES = common dso_local global i32 0, align 4
@ELD_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"HDMI: invalid ELD buf size %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@AC_ELDD_ELD_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"HDMI: invalid ELD data byte %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AC_ELDD_ELD_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"HDMI: 0 ELD data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdmi_get_eld(%struct.hda_codec* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @snd_hdmi_get_eld_size(%struct.hda_codec* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %21 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 128, i32* %12, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ELD_FIXED_BYTES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @ELD_MAX_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22
  %31 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %85

36:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %77, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @hdmi_get_eld_data(%struct.hda_codec* %42, i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @AC_ELDD_ELD_VALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (%struct.hda_codec*, i8*, ...) @codec_info(%struct.hda_codec* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %83

56:                                               ; preds = %41
  %57 = load i32, i32* @AC_ELDD_ELD_DATA, align 4
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %67 = call i32 @codec_dbg(%struct.hda_codec* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %83

70:                                               ; preds = %62, %56
  %71 = load i32, i32* %13, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %72, i8* %76, align 1
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %37

80:                                               ; preds = %37
  %81 = load i32, i32* %12, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %65, %50
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %30
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @snd_hdmi_get_eld_size(%struct.hda_codec*, i32) #1

declare dso_local i32 @codec_info(%struct.hda_codec*, i8*, ...) #1

declare dso_local i32 @hdmi_get_eld_data(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
